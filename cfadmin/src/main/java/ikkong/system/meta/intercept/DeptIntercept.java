package ikkong.system.meta.intercept;

import ikkong.core.aop.AopContext;
import ikkong.core.constant.ConstShiro;
import ikkong.core.jfinal.ext.kit.JStrKit;
import ikkong.core.jfinal.ext.shiro.ShiroKit;
import ikkong.core.meta.PageIntercept;

public class DeptIntercept extends PageIntercept {

	public void queryBefore(AopContext ac) {
		if (ShiroKit.lacksRole(ConstShiro.ADMINISTRATOR)) {
			String depts = ShiroKit.getUser().getDeptId() + "," + ShiroKit.getUser().getSubDepts();
			String condition = "and id in (" + JStrKit.removeSuffix(depts, ",") + ")";
			ac.setCondition(condition);
		}
	}

}
