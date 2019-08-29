package com.pc.cf.controller;

import com.jfinal.aop.Clear;
import com.jfinal.core.Controller;
import com.pc.cf.constant.CommonConstant;
import com.pc.cf.interceptor.PublicInterceptor;
import com.pc.cf.model.*;
import com.pc.cf.model.service.CompanyService;
import com.pc.cf.model.service.DemandService;
import com.pc.cf.model.service.ServeService;
import com.pc.lon.util.Handler_Time;

import java.util.List;

@Clear(PublicInterceptor.class)
public class CompanyController extends Controller {
	
	public void index() {
		int companyId = getParaToInt("id");

		List<Demand> demands = DemandService.findByCompanyLimit3(companyId);
		Company company = CompanyService.findById(companyId);
		company.put("operation1", CommonConstant.operations.get(company.getOperation()));
		company.put("type1",CommonConstant.types.get(company.getType()));
		for (Demand demand:demands){
			demand.setProvincial(CommonConstant.cities.get(Integer.valueOf(demand.getProvincial())));
			demand.setCities(CommonConstant.cities.get(Integer.valueOf(demand.getCities())));
			demand.setCounties(CommonConstant.cities.get(Integer.valueOf(demand.getCounties())));
			demand.put("data", Handler_Time.getInstance(demand.getCreatdate()*1000l).getYYYYMMDD());
			demand.put("data2",Handler_Time.getInstance(demand.getEndtime()*1000l).getYYYYMMDD());
			demand.put("company",company.getName());
		}

		List<Server> serverList = ServeService.findServerList3();
		for (Server server:serverList){
			server.setProvincial(CommonConstant.cities.get(Integer.valueOf(server.getProvincial())));
			server.setCities(CommonConstant.cities.get(Integer.valueOf(server.getCities())));
			server.setCounties(CommonConstant.cities.get(Integer.valueOf(server.getCounties())));
			server.put("data", Handler_Time.getInstance(server.getCreatdate() * 1000l).getYYYYMMDD());
			server.put("company", company);
		}
		setAttr("servers",serverList);

		Demand dao = new Demand().dao();
		List<Demand> crowds = dao.find("select * from demand where type=1 and companyid = "+companyId+" limit 3");
		for (Demand crowd:crowds){
			crowd.setProvincial(CommonConstant.cities.get(Integer.valueOf(crowd.getProvincial())));
			crowd.setCities(CommonConstant.cities.get(Integer.valueOf(crowd.getCities())));
			crowd.setCounties(CommonConstant.cities.get(Integer.valueOf(crowd.getCounties())));
			crowd.put("data",Handler_Time.getInstance(crowd.getCreatdate()*1000l).getYYYYMMDD());
			crowd.put("data2",Handler_Time.getInstance(crowd.getEndtime()*1000l).getYYYYMMDD());

			Crowditem crowditem = new Crowditem().dao();
			List<Crowditem> items= crowditem.find(" select * from  crowditem where crowdid = "+crowd.getId());
			crowd.put("items",items);
			crowd.put("items_num",items.size());
		}
		setAttr("type",getParaToInt("type"));
		setAttr("demand",demands);
		setAttr("company",company);
		setAttr("crowds",crowds);
		render("/company_index.html");
	}
	
	public void intro() {
		int companyId = getParaToInt("id");
		Company company = CompanyService.findById(companyId);
		company.put("operation1", CommonConstant.operations.get(company.getOperation()));
		company.put("type1",CommonConstant.types.get(company.getType()));
		setAttr("type",getParaToInt("type"));
		setAttr("company",company);
		render("/company_intro.html");
	}
	public void credit() {
		int companyId = getParaToInt("id");
		Company company = CompanyService.findById(companyId);
		company.put("operation1", CommonConstant.operations.get(company.getOperation()));
		company.put("type1",CommonConstant.types.get(company.getType()));
		setAttr("type",getParaToInt("type"));
		setAttr("company",company);
		render("/store_credit.html");
	}
	
	public void list() {
		List<Company> companies = CompanyService.findLimit6();
		setAttr("companies",companies);
		render("/company_list.html");
	}
	
	public void need() {
		render("/company_need.html");
	}
}
