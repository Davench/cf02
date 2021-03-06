package ikkong.platform.meta.intercept;

import java.util.List;
import java.util.Map;

import ikkong.core.aop.AopContext;
import ikkong.core.meta.PageIntercept;
import ikkong.core.toolbox.Func;
import ikkong.core.toolbox.support.BladePage;

public class BlogIntercept extends PageIntercept {

	/**
	 * 查询后附加字典项
	 */
	@SuppressWarnings("unchecked")
	@Override
	public void queryAfter(AopContext ac) {
		BladePage<Map<String, Object>> page = (BladePage<Map<String, Object>>) ac.getObject();
		List<Map<String, Object>> list = page.getRows();
		for (Map<String, Object> map : list) {
			map.put("DELNAME", Func.getDictName(902, map.get("f_it_del")));
		}
	}
	
}
