package com.pc.cf.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.plugin.ehcache.CacheKit;
import com.pc.cf.constant.CommonConstant;
import com.pc.cf.model.Demandtype;
import com.pc.cf.model.Userinfo;
import com.pc.cf.model.service.DemandTypeService;

import java.util.List;

public class PublicInterceptor implements Interceptor {

	@Override
	public void intercept(Invocation inv) {
		String openId = inv.getController().getCookie("openId");
		//如果是空的 说明没有登陆
		System.out.println(inv.getController()+""+inv.getActionKey()+inv.getController().getClass()+" PublicInterceptor_"+openId);
		if (openId != null) {
			inv.getController().setAttr("islogin", true);
			inv.getController().setAttr("number", inv.getController().getCookie("number"));
			Userinfo user = CacheKit.get("user", "user_"+inv.getController().getCookie("openId"));
			if (user==null) {
				inv.getController().render("/login.html");
				return;
			}
			if (user.getIscomplete()== CommonConstant.authentication_perfect_no) {
				inv.getController().setAttr("companyNumber", inv.getController().getCookie("openId")+""+(System.currentTimeMillis()));
				List<Demandtype> demands = DemandTypeService.getFirstKey();
				inv.getController().setAttr("demands",demands);
				inv.getController().render("/complete_company_data.html");
				return;
			}

			if (user.getIscomplete()== CommonConstant.authentication_perfect_no) {
				inv.getController().setAttr("companyNumber", inv.getController().getCookie("openId")+""+(System.currentTimeMillis()));
				List<Demandtype> demands = DemandTypeService.getFirstKey();
				inv.getController().setAttr("demands",demands);
				inv.getController().render("/complete_company_data.html");
				return;
			}

//			if (user.getIscomplete()== CommonConstant.authentication_perfect_yes) {
//				inv.getController().setAttr("companyNumber", inv.getController().getCookie("openId")+""+(System.currentTimeMillis()));
//				List<Demandtype> demands = DemandTypeService.getFirstKey();
//				inv.getController().setAttr("demands",demands);
//				inv.getController().redirect("/admin/authentication");
//				return;
//			}

		}
		inv.invoke();
	}

}
