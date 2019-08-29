package com.pc.cf.controller;

import com.alibaba.fastjson.JSONObject;
import com.jfinal.aop.Before;
import com.jfinal.upload.UploadFile;
import com.pc.cf.constant.*;
import com.pc.cf.interceptor.ShareInterceptor;
import com.pc.cf.interceptor.UserInterceptor;
import com.pc.cf.model.*;
import com.pc.cf.model.service.DemandTypeService;
import com.pc.lon.util.Handler_String;
import com.pc.lon.util.Handler_Time;
import org.apache.commons.lang.StringUtils;

import java.util.HashMap;

/**
 * 
 * @author pancheng
 *
 */
public class InquiryController extends CommonController {

	/**
	 * 发布需求
	 */
	@Before({UserInterceptor.class, ShareInterceptor.class})
	public void index() {
		JSONObject jsonObject = new JSONObject();
		jsonObject.putAll(DemandTypeService.getAll());
		setAttr("types", jsonObject);
		render("/release_demand.html");
	}
	
	/**
	 * 发布需求审核
	 */
	@Before({UserInterceptor.class,ShareInterceptor.class})
	public void review() {
		UploadFile file = getFile();
		System.out.println("---"+getPara("deliverydate"));
		if (Handler_String.isBlank(getPara("address")
		,getParaToInt("billing")
		,getParaToInt("certification")
		,getPara("city")
		,getPara("contacts")
		,getPara("county")
		,getPara("deliverydate")
		,getPara("type1")
		,getPara("type2")
		,getPara("description")
		,getPara("endtime")
		,getParaToInt("freight")
		,getParaToInt("invoice")
		,getPara("title")
		,getParaToInt("rawmaterial")
		,getPara("province")
		,getPara("phone")
		,getPara("deliverydate"))){
			BaseResponse response = new BaseResponse(Code.FAIL,"参数不能为空");
			renderJson(response);
			return;
		}
		for (int i =0;i<getParaToInt("num");i++){
			if (Handler_String.isBlank(getParaToInt("objectNumber"+i),getParaToInt("objectPrice"+i))){
				BaseResponse response = new BaseResponse(Code.FAIL,"参数不能为空");
				renderJson(response);
				return;
			}
		}

		String type1 =  getPara("type1");
		String type2 =  getPara("type2");

		HashMap<String,Integer> types = DemandTypeService.getMaps();

		Demand demand = new Demand();
		demand.setAddress(getPara("address"));
		demand.setBilling(getParaToInt("billing"));
		demand.setCertification(getParaToInt("certification"));
		demand.setCities(getPara("city"));
		demand.setCompanyid(getUser().getCompany());
		demand.setContacts(getPara("contacts"));
		demand.setCounties(getPara("county"));
		demand.setCreatdate(Handler_Time.getInstance().getTimeInSeconds());
		demand.setDeliverydate(Handler_Time.getInstance(getPara("deliverydate")).getTimeInSeconds());
		demand.setDemandtype1(types.get(type1));
		demand.setDemandtype2(types.get(type2));
		demand.setDescription(getPara("description"));
		demand.setEndtime(Handler_Time.getInstance(getPara("endtime")).getTimeInSeconds());
		demand.setFreight(getParaToInt("freight"));
		demand.setInvoice(getParaToInt("invoice"));
		demand.setType(getParaToInt("type"));
		demand.setTitle(getPara("title"));
		demand.setRawmaterial(getParaToInt("rawmaterial"));
		demand.setProvincial(getPara("province"));
		demand.setPhoto(getPara("photo"));
		demand.setPayment(getParaToInt("payment"));
		demand.setPhone(getPara("phone"));
		demand.setMode(getParaToInt("mode"));
		//没有后台的时候 这里默认是通过审核了的
		demand.setStatus(CommonConstant.demand_tender);
		boolean result = demand.save();
		boolean exists = true;
		if(result){
			int size = getParaToInt("num");
			for (int i =0;i<size;i++){
				Inquiry inquiry = new Inquiry();
				inquiry.setCreatdate(Handler_Time.getInstance().getTimeInSeconds());
				inquiry.setDemandid(demand.getId());
				if (!StringUtils.isBlank(getPara("id"+i))){
					inquiry.setGoodId(Integer.valueOf(getPara("id"+i)));
				}
				inquiry.setName(getPara("objectName"+i));
				inquiry.setInfo(getPara("objectExt"+i));
				inquiry.setType(CommonConstant.type_demand);
				inquiry.setNumber(getParaToInt("objectNumber"+i));
				inquiry.setPrice(getParaToInt("objectPrice"+i));
				inquiry.setUnit(getPara("object"+i));
				boolean status = inquiry.save();
				if (!status){
					BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.deal_failure);
					renderJson(response);
					return;
				}
			}
		}else{
			BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.deal_failure);
			renderJson(response);
			return;
		}
		if (file!=null){
			Enclosure enclosure = new Enclosure();
			enclosure.setName(file.getFileName());
			enclosure.setCreatdate((int)(System.currentTimeMillis()/1000));
			enclosure.setType(CommonConstant.file_release_demand);
			enclosure.setDemandId(demand.getId());
			enclosure.setUrl(getRequest().getContextPath()+"/upload/"+file.getFileName());
			boolean status = enclosure.save();

			if (!status){
				BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.deal_failure);
				renderJson(response);
				return;
			}
		}

		BaseResponse response = new BaseResponse(exists ? Code.SUCCESS : Code.FAIL,
				exists ? Constant.ResultInfo.deal_sucess : Constant.ResultInfo.name_password_error);
		renderJson(response);
//		render("/release_demand_review.html");
	}

	/**
	 * 发布需求
	 */
	@Before({UserInterceptor.class,ShareInterceptor.class})
	public void result() {
		render("/release_demand_review.html");
	}

	/**
	 * 发布需求
	 */
	@Before({UserInterceptor.class,ShareInterceptor.class})
	public void crowd() {
		JSONObject jsonObject = new JSONObject();
		jsonObject.putAll(DemandTypeService.getAll());
		setAttr("types", jsonObject);
		render("/release_crowd.html");
	}

	@Before({UserInterceptor.class,ShareInterceptor.class})
	public void crowdReview() {
		UploadFile file = getFile();
		System.out.println(getParaMap());

		if (Handler_String.isBlank(getPara("address")
				,getPara("city")
				,getPara("contacts")
				,getPara("county")
				,getPara("photo")
				,getPara("type1")
				,getPara("type2")
				,getPara("description")
				,getPara("endtime")
				,getPara("title")
				,getPara("province")
				,getPara("phone"))){
			BaseResponse response = new BaseResponse(Code.FAIL,"参数不能为空");
			renderJson(response);
			return;
		}
		for (int i =0;i<getParaToInt("num");i++){
			if (Handler_String.isBlank(getPara("title"+i),getPara("desic"+i),getParaToInt("price"+i))){
				BaseResponse response = new BaseResponse(Code.FAIL,"参数不能为空");
				renderJson(response);
				return;
			}
		}

		//		province=360000  =mmm  =1517129031697.png =lll
//		=13918387354  num=2  title1=hhh  desic1=jjj  title0=ddd  desic0=eee  =bbb
//		city=360200  county=360203  price1=kkk  price0=fff  type2=符合材料成型  =设计
//		file=  endtime=2018-01-28  =aaa
		String type1 =  getPara("type1");
		String type2 =  getPara("type2");
		HashMap<String,Integer> types = DemandTypeService.getMaps();
		Demand demand = new Demand();
		demand.setAddress(getPara("address"));
		demand.setBilling(getParaToInt("billing",0));
		demand.setCertification(getParaToInt("certification",0));
		demand.setCities(getPara("city"));
		demand.setCompanyid(getUser().getCompany());
		demand.setContacts(getPara("contacts"));
		demand.setCounties(getPara("county"));
		demand.setCreatdate(Handler_Time.getInstance().getTimeInSeconds());
		demand.setDeliverydate(Handler_Time.getInstance().getTimeInSeconds());
		demand.setDemandtype1(types.get(type1));
		demand.setDemandtype2(types.get(type2));
		demand.setDescription(getPara("description"));
		demand.setEndtime(Handler_Time.getInstance(getPara("endtime")).getTimeInSeconds());
		demand.setFreight(getParaToInt("freight",1));
		demand.setInvoice(getParaToInt("invoice",0));
		demand.setType(1);
		demand.setTitle(getPara("title"));
		demand.setRawmaterial(getParaToInt("rawmaterial",1));
		demand.setProvincial(getPara("province"));
		demand.setPhoto(getPara("photo"));
		demand.setPayment(getParaToInt("payment",0));
		demand.setPhone(getPara("phone"));
		demand.setMode(getParaToInt("mode",0));
		//没有后台的时候 这里默认是通过审核了的
		demand.setStatus(CommonConstant.demand_tender);

//		Crowd crowd  = new Crowd();
//		crowd.setAddress(getPara("address"));
//		crowd.setCities(getPara("city"));
//		crowd.setCompanyid(getUser().getCompany());
//		crowd.setContacts(getPara("contacts"));
//		crowd.setProvincial(getPara("province"));
//		crowd.setCreatdate(Handler_Time.getInstance().getTimeInSeconds());
//		crowd.setCounties(getPara("county"));
//		crowd.setDemandtype1(types.get(type1));
//		crowd.setDemandtype2(types.get(type2));
//		crowd.setDescription(getPara("description"));
//		crowd.setEndtime(Handler_Time.getInstance(getPara("endtime")).getTimeInSeconds());
//		crowd.setPhone(getPara("phone"));
//		crowd.setPhoto(getPara("photo"));
//		crowd.setTitle(getPara("title"));
//		crowd.setType(0);
//		crowd.setStatus(0);

		boolean result = demand.save();
		boolean exists = true;
		if(result){
			int size = getParaToInt("num");
			for (int i =0;i<size;i++){
				Crowditem inquiry = new Crowditem();
				inquiry.setCrowdid(demand.getId());
				inquiry.setDesic(getPara("desic"+i));
				inquiry.setPrice(getParaToInt("price"+i));
				inquiry.setTitle(getPara("title"+i));
				boolean status = inquiry.save();
				if (!status){
					BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.deal_failure);
					renderJson(response);
					return;
				}
			}
		}else{
			BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.deal_failure);
			renderJson(response);
			return;
		}
		if (file!=null){
			Enclosure enclosure = new Enclosure();
			enclosure.setName(file.getFileName());
			enclosure.setCreatdate((int)(System.currentTimeMillis()/1000));
			enclosure.setType(CommonConstant.file_release_crowd);
			enclosure.setDemandId(demand.getId());
			enclosure.setUrl(getRequest().getContextPath()+"/upload/"+file.getFileName());
			boolean status = enclosure.save();

			if (!status){
				BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.deal_failure);
				renderJson(response);
				return;
			}
		}

		BaseResponse response = new BaseResponse(exists ? Code.SUCCESS : Code.FAIL,
				exists ? Constant.ResultInfo.deal_sucess : Constant.ResultInfo.name_password_error);
		renderJson(response);
	}
}
