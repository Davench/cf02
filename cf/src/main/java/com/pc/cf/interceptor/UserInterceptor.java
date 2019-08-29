package com.pc.cf.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;

public class UserInterceptor implements Interceptor {

	@Override
	public void intercept(Invocation inv) {

		String openId = inv.getController().getCookie("openId");
		System.out.println("UserInterceptor_"+openId);
		//如果是空的 说明没有登陆
		if (openId == null) {
			inv.getController().render("/login.html");
			return;
		}
		inv.getController().setAttr("islogin", true);
		inv.getController().setAttr("number", inv.getController().getCookie("number"));
		inv.invoke();
	}

}
