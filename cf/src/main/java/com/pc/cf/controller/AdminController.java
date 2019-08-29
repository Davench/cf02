package com.pc.cf.controller;

import com.alibaba.fastjson.JSONObject;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.plugin.activerecord.Page;
import com.pc.cf.constant.*;
import com.pc.cf.constant.Code;
import com.pc.cf.interceptor.PublicInterceptor;
import com.pc.cf.interceptor.UserInterceptor;
import com.pc.cf.model.*;
import com.pc.cf.model.service.*;
import com.pc.lon.util.Handler_Time;
import org.apache.commons.lang.StringUtils;

import java.util.List;

/**
 * 乡味记忆
 * 
 * @author pancheng
 *
 */
@Before(UserInterceptor.class)
@Clear(PublicInterceptor.class)
public class AdminController extends CommonController {


	public void index() {
		Userinfo user = getUser();
		Company company = CompanyService.findById(user.getCompany());
		company.setPhoto(getRequest().getContextPath()+"/upload/"+company.getPhoto());
		setAttr("company", company);
		render("/business_center.html");
	}
	
	public void mineDemand() {
		int page = getParaToInt("page",1);
		Company company = CompanyService.findById(getUser().getCompany());
		Page<Demand> demands = DemandService.findByCompany(company.getId(),page);
		for (Demand demand:demands.getList()){
			List<Inquiry> inquirys = InquiryService.getInquiryByDemand(demand.getId(),CommonConstant.type_demand);
			int count = 0;
			for (Inquiry inquiry:inquirys) {
				count+=inquiry.getPrice()*inquiry.getNumber();
			}
			demand.put("allPrice",count);
			int quotedpriceid = demand.getQuotedpriceid();
			Quotedprice quotedprice = QuotedPriceService.findById(quotedpriceid);
			if (quotedprice!=null){
				Company company1 = CompanyService.findById(quotedprice.getCompanyid());
				if (company1!=null){
					demand.put("takedCompany",company1);
				}
			}
			long quotedprice1 = QuotedPriceService.findCountByDemandId(demand.getId());
			String provincial = CommonConstant.cities.get(Integer.valueOf(demand.getProvincial()));
			demand.setProvincial(provincial);
			demand.setCities(CommonConstant.cities.get(Integer.valueOf(demand.getCities())));
			demand.setCounties(CommonConstant.cities.get(Integer.valueOf(demand.getCounties())));
			demand.put("data", Handler_Time.getInstance(demand.getCreatdate()*1000l).getYYYYMMDD());
			demand.put("data2",Handler_Time.getInstance(demand.getEndtime()*1000l).getYYYYMMDD());
			demand.put("statustr",CommonConstant.demands.get(demand.getStatus()));
			demand.put("quotedprice",quotedprice1);
			demand.put("company",company.getName());
		}
		setAttr("demands",demands);
		render("/mine_release_demand.html");
	}

	public void takeDemand() {
		int page = getParaToInt("page",1);

		Page<Demand> demands = DemandService.findCountByDemandId(getUser().getId(),page);
		for (Demand demand:demands.getList()){
			List<Inquiry> inquirys = InquiryService.getInquiryByDemand(demand.getId(),CommonConstant.type_demand);
			int count = 0;
			for (Inquiry inquiry:inquirys) {
				count+=inquiry.getPrice()*inquiry.getNumber();
			}
			demand.put("allPrice",count);
			long quotedprice = QuotedPriceService.findCountByDemandId(demand.getId());
			demand.setProvincial(CommonConstant.cities.get(Integer.valueOf(demand.getProvincial())));
			demand.setCities(CommonConstant.cities.get(Integer.valueOf(demand.getCities())));
			demand.setCounties(CommonConstant.cities.get(Integer.valueOf(demand.getCounties())));
			demand.put("data", Handler_Time.getInstance(demand.getCreatdate()*1000l).getYYYYMMDD());
			demand.put("data2",Handler_Time.getInstance(demand.getEndtime()*1000l).getYYYYMMDD());
			demand.put("statustr",CommonConstant.demands.get(demand.getStatus()));
			demand.put("quotedprice",quotedprice);
			Company company = CompanyService.findById(demand.getCompanyid());
			demand.put("company",company);
		}
		setAttr("demands",demands);
		render("/mine_part_demand.html");
	}


	public void myServers() {
		List<Server> servers = ServeService.findServerByCompany(getUser().getCompany());
		for (Server server:servers){
			server.put("data", Handler_Time.getInstance(server.getCreatdate() * 1000l).getYYYYMMDD());
			server.put("from1",DemandTypeService.getMaps2().get(server.getDemandtype1()));
			server.put("from2",DemandTypeService.getMaps2().get(server.getDemandtype2()));
		}
		setAttr("servers",servers);
		render("/mine_serve.html");
	}

	public void myServersDetail() {
		Server server = ServeService.findById(getParaToInt("id"));
		Company company = CompanyService.findById(server.getCompanyid());
		if (company != null) {
			server.put("company", company);
		} else {
			server.put("company", null);
		}
		Enclosure enclosure = EnclosureService.getEnclosureByDemand(server.getId(),CommonConstant.file_release_server);
		server.put("enclosure", enclosure);
		server.put("from1",DemandTypeService.getMaps2().get(server.getDemandtype1()));
		server.put("from2",DemandTypeService.getMaps2().get(server.getDemandtype2()));
		setAttr("server",server);
		render("/mine_serve_details.html");
	}


	public void demandOrder() {
		render("/mine_demand_order.html");
	}
	public void demandOrderDetails() {
		render("/my_order_details.html");
	}

	public void myDemandDetail() {
		Demand demand = DemandService.findMyDetailById(getParaToInt("id"));
		demand.put("statustr",CommonConstant.demands.get(demand.getStatus()));
		setAttr("demand",demand);
		render("/release_demand_details.html");
	}

	public void delete() {
		Demand demand = DemandService.findMyDetailById(getParaToInt("id"));
		boolean isDelete = demand.delete();
		BaseResponse response = new BaseResponse(isDelete?Code.SUCCESS:Code.FAIL, isDelete?Constant.ResultInfo.deal_sucess:Constant.ResultInfo.deal_failure);
		renderJson(response);
	}

	public void selectCompany() {
		Quotedprice price = QuotedPriceService.findById(getParaToInt("id"));
		if (price != null){
			Demand demand = DemandService.findById(getParaToInt("demandId"));
			demand.setQuotedpriceid(price.getId());
			demand.setStatus(CommonConstant.demand_wait);
			demand.update();
		}
		BaseResponse response = new BaseResponse(Code.SUCCESS, Constant.ResultInfo.deal_sucess);
		renderJson(response);
	}

	public void confirm() {
		Demand demand = DemandService.findById(getParaToInt("id"));
		demand.setStatus(CommonConstant.demand_contract);
		demand.update();
		redirect("/admin/demandDetail?id="+demand.getId());
	}

	public void locking() {
		Demand demand = DemandService.findById(getParaToInt("id"));
		demand.setStatus(CommonConstant.demand_locking);
		demand.update();
		redirect("/admin/myDemandDetail?id="+demand.getId());
	}



	public void demandDetail() {
		int userId = getCookieToInt("openId",0);
		Demand demand = DemandService.findDetailById(getParaToInt("id"),userId);
		demand.put("from1", DemandTypeService.getMaps2().get(demand.getDemandtype1()));
		demand.put("from2",DemandTypeService.getMaps2().get(demand.getDemandtype2()));
		demand.put("statustr",CommonConstant.demands.get(demand.getStatus()));
		setAttr("demand",demand);
		render("/mine_order_details_1.html");
	}

	public void authi() {
		render("/authentication.html");
	}

	public void companyInfo() {
		render("/company_info.html");
	}


	public void authentication() {
		render("/firm_approve_write.html");
	}

	public void authenticationSub() {
		int subtype = getParaToInt("subtype");
		String name = getPara("name");
		String creditCode = getPara("creditCode");
		String representative = getPara("representative");
		String representativeCard = getPara("representativeCard");
		String representativePhone = getPara("representativePhone");
		String contacts = getPara("contacts");
		String phone = getPara("phone");
		String files1 = getPara("files1");
		String files2 = getPara("files2");
		String files3 = getPara("files3");
		String files4 = getPara("files4");
		String files5 = getPara("files5");
		String files6 = getPara("files6");
		String businessNumber = getPara("businessNumber");
		String organizationCode = getPara("organizationCode");
		String taxpayersAlias = getPara("taxpayersAlias");

		Authentication authentication = new Authentication();
		if (subtype == 0){
			if (StringUtils.isEmpty(name)||StringUtils.isEmpty(creditCode)||StringUtils.isEmpty(representative)||StringUtils.isEmpty(representativeCard)||StringUtils.isEmpty(representativePhone)||
					StringUtils.isEmpty(contacts)||StringUtils.isEmpty(phone)||StringUtils.isEmpty(files1)||StringUtils.isEmpty(files2)){
				BaseResponse response = new BaseResponse(Code.FAIL,"认证资料不能为空");
				renderJson(response);
				return;
			}
			authentication.setCardPhoto(files2);
			authentication.setPhoto(files1);
		}
		if (subtype == 1){
			if (StringUtils.isEmpty(name)||StringUtils.isEmpty(businessNumber)||StringUtils.isEmpty(organizationCode)||StringUtils.isEmpty(taxpayersAlias)||StringUtils.isEmpty(representative)||
					StringUtils.isEmpty(representativeCard)||StringUtils.isEmpty(representativePhone)||StringUtils.isEmpty(contacts)||StringUtils.isEmpty(phone)||StringUtils.isEmpty(files3)
					||StringUtils.isEmpty(files4)||StringUtils.isEmpty(files5)||StringUtils.isEmpty(files6)){
				BaseResponse response = new BaseResponse(Code.FAIL,"认证资料不能为空");
				renderJson(response);
				return;
			}
			authentication.setCardPhoto(files6);
			authentication.setPhoto(files5);
			authentication.setOrganizationCard(files4);
			authentication.setTaxCard(files3);
		}

		authentication.setCompanyId(getUser().getCompany());
		authentication.setRepresentativeCard(representativeCard);
		authentication.setBusinessNumber(businessNumber);
		authentication.setContacts(contacts);
		authentication.setCreatTime(Handler_Time.getInstance().getTimeInSeconds());
		authentication.setCreditCode(creditCode);
		authentication.setIsThree(subtype);
		authentication.setName(name);
		authentication.setPhone(phone);
		authentication.setRepresentative(representative);
		authentication.setRepresentativePhone(representativePhone);
		authentication.setOrganizationCode(organizationCode);
		authentication.setTaxpayersAlias(taxpayersAlias);

		System.out.println(JSONObject.toJSONString(authentication));

		boolean exists = authentication.save();

		Company company = CompanyService.findById(getUser().getCompany());
		company.setAuthentication(CommonConstant.authentication_waiting);
		exists = exists&&company.update();

		BaseResponse response = new BaseResponse(exists ? Code.SUCCESS : Code.FAIL,
				exists ? Constant.ResultInfo.deal_sucess : Constant.ResultInfo.name_password_error);
		renderJson(response);
	}
}
