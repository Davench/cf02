package com.pc.cf.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.plugin.ehcache.CacheKit;
import com.pc.cf.model.Company;
import com.pc.cf.model.Userinfo;
import com.pc.cf.model.service.CompanyService;

public class ShareInterceptor implements Interceptor {

	@Override
	public void intercept(Invocation inv) {
		String openId = inv.getController().getCookie("openId");
		//如果是空的 说明没有登陆
		if (openId != null) {
			inv.getController().setAttr("islogin", true);
			inv.getController().setAttr("number", inv.getController().getCookie("number"));
			Userinfo user = CacheKit.get("user", "user_"+inv.getController().getCookie("openId"));
			if (user==null) {
				inv.getController().render("/login.html");
				return;
			}
			System.out.println(user);
			Company company = CompanyService.findById(user.getCompany());
			//未审核
			if (company.getStatus() == 3) {
				inv.getController().render("/failure.html");
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
