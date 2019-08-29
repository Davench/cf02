package ikkong.platform.meta.intercept;

import ikkong.core.aop.AopContext;
import ikkong.core.meta.PageIntercept;
import ikkong.core.toolbox.Func;
import ikkong.core.toolbox.support.BladePage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CompanyIntercept extends PageIntercept {

	public static final int authentication_perfect_no = 0;//未完善资料
	public static final int authentication_perfect_yes = 1;//完善资料成功
	public static final int authentication_yes = 3;//已经认证
	public static final int authentication_failure = 4;//认证驳回
	public static final int authentication_waiting = 5;//等待认证

	public static final HashMap<Integer,String> keys = new HashMap<Integer,String>(){{
		put(authentication_perfect_no,"未完善资料");
		put(authentication_perfect_yes,"未认证");
		put(authentication_yes,"已经认证");
		put(authentication_failure,"认证驳回");
		put(authentication_waiting,"等待认证");
	}};

	/**
	 * 查询后附加字典项
	 */
	@SuppressWarnings("unchecked")
	@Override
	public void queryAfter(AopContext ac) {
		BladePage<Map<String, Object>> page = (BladePage<Map<String, Object>>) ac.getObject();
		List<Map<String, Object>> list = page.getRows();
		for (Map<String, Object> map : list) {
			map.put("STATUS", Func.getDictName(901, map.get("status")));
			map.put("AUT", keys.get(map.get("authentication")));
			String url = ac.getCtrl().getRequest().getScheme()+"://"+ac.getCtrl().getRequest().getServerName()+":"+ac.getCtrl().getRequest().getServerPort();
			System.out.println(url+"/upload/"+keys.get("photo"));
			map.put("url", url+"/upload/"+keys.get("photo"));
		}
	}
	
}
