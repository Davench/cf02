package com.pc.cf.controller;

import com.pc.cf.constant.CommonConstant;
import com.pc.cf.constant.CommonController;
import com.pc.cf.model.Company;
import com.pc.cf.model.Demand;
import com.pc.cf.model.service.CompanyService;
import com.pc.cf.model.service.DemandService;
import com.pc.cf.model.service.ServeService;
import com.pc.lon.util.Handler_Time;

import java.util.List;

/**
 * 乡味记忆
 * 
 * @author pancheng
 *
 */
public class CrowdController extends CommonController {

	public void index() {
		List<Demand> demands = DemandService.findLimit10();
		List<Company> companies = CompanyService.findLimit6();

		for (Company company:companies){
			long count = DemandService.findCountBycompanyId(company.getId());
			company.put("demandCount",count);
			 count = ServeService.findCountBycompanyId(company.getId());
			company.put("ServeCount",count);
			company.put("operation1",CommonConstant.operations.get(company.getOperation()));
			company.put("type1",CommonConstant.types.get(company.getType()));
		}

		for (Demand demand:demands) {
			demand.setProvincial(CommonConstant.cities.get(Integer.valueOf(demand.getProvincial())));
			demand.setCities(CommonConstant.cities.get(Integer.valueOf(demand.getCities())));
			demand.setCounties(CommonConstant.cities.get(Integer.valueOf(demand.getCounties())));
			demand.put("data",Handler_Time.getInstance(demand.getCreatdate()*1000l).getYYYYMMDD());
			demand.put("data2",Handler_Time.getInstance(demand.getEndtime()*1000l).getYYYYMMDD());
			long time = demand.getDeliverydate() - Handler_Time.getInstance().getTimeInSeconds();
			demand.put("time",time);
			demand.put("limittime",Handler_Time.formatDuring(time*1000));
			Company company = CompanyService.findById(demand.getCompanyid());
			if (company!=null){
				demand.put("company",company);
			}else{
				demand.put("company","未认证");
			}
		}
		System.out.println(companies.size());
		setAttr("companies",companies);
		setAttr("demands",demands);
		render("/index.html");
	}

	public void waiting(){
		render("/waiting.html");
	}
}
