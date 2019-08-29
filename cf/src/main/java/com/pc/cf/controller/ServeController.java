package com.pc.cf.controller;

import com.alibaba.fastjson.JSONObject;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.upload.UploadFile;
import com.pc.cf.constant.*;
import com.pc.cf.interceptor.PublicInterceptor;
import com.pc.cf.interceptor.ShareInterceptor;
import com.pc.cf.interceptor.UserInterceptor;
import com.pc.cf.model.Company;
import com.pc.cf.model.Enclosure;
import com.pc.cf.model.Inquiry;
import com.pc.cf.model.Server;
import com.pc.cf.model.service.*;
import com.pc.lon.util.Handler_String;
import com.pc.lon.util.Handler_Time;
import org.apache.commons.lang.StringUtils;

import java.util.HashMap;
import java.util.List;

/**
 * 
 * @author pancheng
 *
 */
public class ServeController extends CommonController {

	/**
	 * 发布需求
	 */
	@Before({UserInterceptor.class,ShareInterceptor.class})
	public void index() {
		JSONObject jsonObject = new JSONObject();
		jsonObject.putAll(DemandTypeService.getAll());
		setAttr("types", jsonObject);
		render("/release_serve.html");
	}
	
	/**
	 * 发布需求审核
	 */
	@Before({UserInterceptor.class,ShareInterceptor.class})
	public void review() {

		UploadFile file = getFile();


		if (Handler_String.isBlank(getPara("address")
				,getParaToInt("city")
				,getPara("contacts")
				,getPara("county")
				,getPara("description")
				,getPara("type")
				,getPara("title")
				,getPara("province")
				,getPara("phone")
				,getPara("unit")
				,getPara("price"))){
			BaseResponse response = new BaseResponse(Code.FAIL,"参数不能为空");
			renderJson(response);
			return;
		}

		String type1 =  getPara("type1");
		String type2 =  getPara("type2");

		HashMap<String,Integer> types = DemandTypeService.getMaps();

		Server demand = new Server();
		demand.setAddress(getPara("address"));
		demand.setCities(getPara("city"));
		demand.setCompanyid(getUser().getCompany());
		demand.setContacts(getPara("contacts"));
		demand.setCounties(getPara("county"));
		demand.setCreatdate(Handler_Time.getInstance().getTimeInSeconds());
		demand.setDemandtype1(types.get(type1));
		demand.setDemandtype2(types.get(type2));
		demand.setDescription(getPara("description"));
		demand.setType(getParaToInt("type"));
		demand.setTitle(getPara("title"));
		demand.setProvincial(getPara("province"));
		demand.setPhoto(getPara("photo"));
		demand.setPhone(getPara("phone"));
		demand.setUnit(getPara("unit"));
		demand.setPrices(getParaToInt("price"));
		boolean result = demand.save();
		if(!result){
			BaseResponse response = new BaseResponse(Code.FAIL, Constant.ResultInfo.deal_failure);
			renderJson(response);
			return;
		}

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
			inquiry.setNumber(getParaToInt("objectNumber"+i,0));
			inquiry.setPrice(getParaToInt("objectPrice"+i));
			inquiry.setType(CommonConstant.type_serve);
			inquiry.setUnit(getPara("object"+i));
			boolean status = inquiry.save();
			if (!status){
				BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.deal_failure);
				renderJson(response);
				return;
			}
		}

		if (file!=null){
			Enclosure enclosure = new Enclosure();
			enclosure.setName(file.getFileName());
			enclosure.setCreatdate((int)(System.currentTimeMillis()/1000));
			enclosure.setType(CommonConstant.file_release_server);
			enclosure.setDemandId(demand.getId());
			enclosure.setUrl(getRequest().getContextPath()+"/upload/"+file.getFileName());
			boolean status = enclosure.save();

			if (!status){
				BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.deal_failure);
				renderJson(response);
				return;
			}
		}

		BaseResponse response = new BaseResponse(Code.SUCCESS,Constant.ResultInfo.deal_sucess);
		renderJson(response);

		//render("/release_serve_review.html");
	}


	@Before({UserInterceptor.class,ShareInterceptor.class})
	public void result() {
		render("/release_serve_review.html");
	}


	@Clear(PublicInterceptor.class)
	public void list() {
		int goodsId = getParaToInt("goodsId",0);
		List<Server> serverList = ServeService.findServerList(goodsId);
		for (Server server:serverList){
			List<Inquiry> inquirys = InquiryService.getInquiryByDemand(server.getId(),CommonConstant.type_serve);
			StringBuffer stringBuffer = new StringBuffer();
			for (Inquiry inquiry:inquirys) {
				if (stringBuffer.length()>0)
					stringBuffer.append("/");
				stringBuffer.append(inquiry.getName());
			}
			server.put("goods",stringBuffer.toString());
			server.put("data", Handler_Time.getInstance(server.getCreatdate() * 1000l).getYYYYMMDD());
			Company company = CompanyService.findById(server.getCompanyid());
			if (company != null) {
				server.put("company", company);
			} else {
				server.put("company", null);
			}
		}

		setAttr("servers",serverList);
		render("/serve_list.html");
	}

	@Clear(PublicInterceptor.class)
	public void detail() {

		Server server = ServeService.findById(getParaToInt("id"));
		Company company = CompanyService.findById(server.getCompanyid());
		if (company != null) {
			server.put("company", company);
		} else {
			server.put("company", null);
		}
		List<Inquiry> inquirys = InquiryService.getInquiryByDemand(server.getId(),CommonConstant.type_serve);
		int count = 0;
		for (Inquiry inquiry:inquirys) {
			count+=inquiry.getPrice()*inquiry.getNumber();
		}
		System.out.println(inquirys);
		server.put("inquirys", inquirys);
		Enclosure enclosure = EnclosureService.getEnclosureByDemand(server.getId(),CommonConstant.file_release_server);
		server.put("enclosure", enclosure);
		server.put("from1",DemandTypeService.getMaps2().get(server.getDemandtype1()));
		server.put("from2",DemandTypeService.getMaps2().get(server.getDemandtype2()));
		setAttr("server",server);

		render("/serve_details.html");
	}
	
	@Before({UserInterceptor.class,ShareInterceptor.class})
	public void submitPrice() {
		render("/serve_inquire.html");
	}
	
	@Before({UserInterceptor.class,ShareInterceptor.class})
	public void priceReview() {
		render("/offer_review_3.html");
	}
}
