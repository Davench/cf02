package com.pc.cf.controller;

import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.upload.UploadFile;
import com.pc.cf.constant.*;
import com.pc.cf.interceptor.PublicInterceptor;
import com.pc.cf.interceptor.ShareInterceptor;
import com.pc.cf.interceptor.UserInterceptor;
import com.pc.cf.model.*;
import com.pc.cf.model.service.*;
import com.pc.lon.util.Handler_Time;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

public class NeedController extends CommonController {

	@Clear(PublicInterceptor.class)
	public void list() throws UnsupportedEncodingException {
		int demandType = getParaToInt("demandType",-1);
		int companyType = getParaToInt("companyType",-1);
		int operation = getParaToInt("operation",-1);
		int authentication = getParaToInt("authentication",-1);
		int scale = getParaToInt("scale",-1);
		int goodsId = getParaToInt("goodsId",0);
		int page = getParaToInt("page",1);
		String key =  URLDecoder.decode(getPara("keyword",""),"UTF-8");
		//查询条件
		Page<Demand> demandPage = DemandService.listPage(key,demandType,companyType,operation,authentication,scale,goodsId,page);

		if (demandPage.getList().size()>0){
			List<Demand> list = demandPage.getList();
			for (Demand demand:
					list) {
				List<Inquiry> inquirys = InquiryService.getInquiryByDemand(demand.getId(),CommonConstant.type_demand);
				StringBuffer stringBuffer = new StringBuffer();
				for (Inquiry inquiry:inquirys) {
					if (stringBuffer.length()>0)
						stringBuffer.append("/");
					stringBuffer.append(inquiry.getName());
				}
				demand.put("goods",stringBuffer.toString());
				demand.setProvincial(CommonConstant.cities.get(Integer.valueOf(demand.getProvincial())));
				demand.setCities(CommonConstant.cities.get(Integer.valueOf(demand.getCities())));
				demand.setCounties(CommonConstant.cities.get(Integer.valueOf(demand.getCounties())));
				demand.put("data", Handler_Time.getInstance(demand.getCreatdate() * 1000l).getYYYYMMDD());
				demand.put("data2", Handler_Time.getInstance(demand.getEndtime() * 1000l).getYYYYMMDD());
				long time = demand.getDeliverydate() - Handler_Time.getInstance().getTimeInSeconds();
				demand.put("time",time);
				demand.put("limittime",Handler_Time.formatDuring(time*1000));
				if (getCookie("openId")!=null){
					Quotedprice quotedprice = QuotedPriceService.findByUserIdAndDemandId(getUser().getId(),demand.getId());
					demand.put("quotedprice",quotedprice);
				}
				Company company = CompanyService.findById(demand.getCompanyid());
				if (company != null) {
					demand.put("company", company);
				} else {
					demand.put("company", null);
				}
			}
		}

		//查询
		System.out.println(demandPage.getList()+"+"+demandPage.getTotalRow());
		setAttr("demand",demandPage);

		List<Demandtype> demandtypes = DemandTypeService.getFirstKey();

		setAttr("demandType",demandType);
		setAttr("companyType",companyType);
		setAttr("operation",operation);
		setAttr("authentication",authentication);
		setAttr("scale",scale);
		setAttr("page",page);

		setAttr("demandTypes",demandtypes);
		render("/need_list.html");
	}

	@Clear(PublicInterceptor.class)
	public void detail() {
		int userId = getCookieToInt("openId",0);
		Demand demand = DemandService.findDetailById(getParaToInt("id"),userId);
		demand.put("from1",DemandTypeService.getMaps2().get(demand.getDemandtype1()));
		demand.put("from2",DemandTypeService.getMaps2().get(demand.getDemandtype2()));
		long time = demand.getDeliverydate() - Handler_Time.getInstance().getTimeInSeconds();
		setAttr("time",time);
		setAttr("limittime",Handler_Time.formatDuring(time*1000));
		setAttr("demand",demand);
		render("/need_list_details.html");
	}
	
	@Before({UserInterceptor.class,ShareInterceptor.class})
	public void submitPrice() {
		Demand demand = DemandService.findDetailById(getParaToInt("id"),0);
		setAttr("demand",demand);
		render("/submit_offer.html");
	}
	
	@Before({UserInterceptor.class,ShareInterceptor.class})
	public void priceReview() {
		UploadFile file = getFile();
		String info = getPara("info");
		String time = getPara("time");
		String contacts = getPara("contacts");
		String phone = getPara("phone");
		int freight = getParaToInt("freight");
		int demandId = getParaToInt("demandId");

		boolean status = true;
		Quotedprice quotedprice = new Quotedprice();
		quotedprice.setCompanyid(getUser().getCompany());
		quotedprice.setCreatdate(Handler_Time.getInstance().getTimeInSeconds());
		quotedprice.setEffective(Handler_Time.getInstance(time).getTimeInSeconds());
		quotedprice.setFreight(freight);
		quotedprice.setPhone(phone);
		quotedprice.setUserid(Integer.valueOf(getCookie("openId")));
		quotedprice.setUser(contacts);
		quotedprice.setDemandid(demandId);
		quotedprice.setPricedescribe(info);
		status = quotedprice.save();

		if (!status){
			BaseResponse response = new BaseResponse(Code.FAIL, Constant.ResultInfo.deal_failure);
			renderJson(response);
			return;
		}

		if(file!=null){
			Enclosure enclosure = new Enclosure();
			enclosure.setName(file.getFileName());
			enclosure.setCreatdate((int)(System.currentTimeMillis()/1000));
			enclosure.setType(CommonConstant.file_take_demand);
			enclosure.setDemandId(quotedprice.getId());
			enclosure.setUrl(getRequest().getContextPath()+"/upload/"+file.getFileName());
			status = enclosure.save();

			if (!status){
				BaseResponse response = new BaseResponse(Code.FAIL, Constant.ResultInfo.deal_failure);
				renderJson(response);
				return;
			}
		}

		BaseResponse response = new BaseResponse(Code.SUCCESS, Constant.ResultInfo.deal_sucess);
		renderJson(response);
	}

	@Before({UserInterceptor.class,ShareInterceptor.class})
	public void priceReview2() {
		render("/offer_review.html");
	}
}
