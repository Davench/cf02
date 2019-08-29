package com.pc.cf.constant;

import com.pc.cf.model.Userinfo;
import com.pc.cf.model.service.UserInfoService;
import com.pc.lon.LonControl;

public class CommonController extends LonControl {
	
	protected int publicId;
	
	public void setPublicId(int publicId) {
		this.publicId = publicId;
	}

	protected Userinfo getUser() {
		String openId = getCookie("openId");
		return UserInfoService.findById(Integer.valueOf(openId));
	}
	
}
