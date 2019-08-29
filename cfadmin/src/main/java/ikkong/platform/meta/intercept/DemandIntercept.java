package ikkong.platform.meta.intercept;

import ikkong.common.config.Handler_Time;
import ikkong.core.aop.AopContext;
import ikkong.core.meta.PageIntercept;
import ikkong.core.toolbox.support.BladePage;
import ikkong.platform.model.City;
import ikkong.platform.model.Company;
import ikkong.platform.model.Demandtype;
import ikkong.platform.service.CityService;
import ikkong.platform.service.CompanyService;
import ikkong.platform.service.DemandtypeService;
import ikkong.platform.service.impl.CityServiceImpl;
import ikkong.platform.service.impl.CompanyServiceImpl;
import ikkong.platform.service.impl.DemandTypeServiceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DemandIntercept extends PageIntercept {

	CityService city = new CityServiceImpl();
	CompanyService companyService = new CompanyServiceImpl();
	DemandtypeService demandTypeService = new DemandTypeServiceImpl();
	/**
	 * 查询后附加字典项
	 */
	@SuppressWarnings("unchecked")
	@Override
	public void queryAfter(AopContext ac) {
		List<City> citys = city.findAll();
		HashMap<Integer,String> values = new HashMap<>();
		for (City city:citys){
			values.put(city.getCode(),city.getName());
		}
		BladePage<Map<String, Object>> page = (BladePage<Map<String, Object>>) ac.getObject();
		List<Map<String, Object>> list = page.getRows();
		for (Map<String, Object> map : list) {
			Company company = companyService.findById(map.get("companyid"));
			map.put("COMPANY_NAME",company.getName());

			Demandtype demandType = demandTypeService.findById(Integer.parseInt(map.get("demandtype1").toString()));
			map.put("TYPE1",demandType==null?"":demandType.getName());
			demandType = demandTypeService.findById(Integer.parseInt(map.get("demandtype2").toString()));
			map.put("TYPE2",demandType==null?"":demandType.getName());
			map.put("END", Handler_Time.getInstance(Integer.valueOf(map.get("endtime").toString())*1000l).getYYYYMMDD());
			map.put("CREAT", Handler_Time.getInstance(Integer.valueOf(map.get("creatdate").toString())*1000l).getYYYYMMDD());
			map.put("DELI", Handler_Time.getInstance(Integer.valueOf(map.get("deliverydate").toString())*1000l).getYYYYMMDD());
			map.put("CITY", values.get(Integer.valueOf(map.get("provincial").toString()))+values.get(Integer.valueOf(map.get("cities").toString()))+values.get(Integer.valueOf(map.get("counties").toString())));
		}
	}
}
