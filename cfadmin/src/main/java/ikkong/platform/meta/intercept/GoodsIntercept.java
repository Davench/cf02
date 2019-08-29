package ikkong.platform.meta.intercept;

import ikkong.core.aop.AopContext;
import ikkong.core.meta.PageIntercept;
import ikkong.core.toolbox.support.BladePage;
import ikkong.platform.model.Demandtype;
import ikkong.platform.service.DemandtypeService;
import ikkong.platform.service.impl.DemandTypeServiceImpl;

import java.util.List;
import java.util.Map;

public class GoodsIntercept extends PageIntercept {

	DemandtypeService demandTypeService = new DemandTypeServiceImpl();
	/**
	 * 查询后附加字典项
	 */
	@SuppressWarnings("unchecked")
	@Override
	public void queryAfter(AopContext ac) {
		BladePage<Map<String, Object>> page = (BladePage<Map<String, Object>>) ac.getObject();
		List<Map<String, Object>> list = page.getRows();
		for (Map<String, Object> map : list) {
			Demandtype demandType = demandTypeService.findById(Integer.parseInt(map.get("type1").toString()));
			map.put("TYP1",demandType==null?"":demandType.getName());
			demandType = demandTypeService.findById(Integer.parseInt(map.get("type2").toString()));
			map.put("TYP2",demandType==null?"":demandType.getName());
		}
	}
	
}
