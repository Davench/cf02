package com.pc.cf.controller;

import com.jfinal.aop.Clear;
import com.pc.cf.constant.CommonController;
import com.pc.cf.interceptor.PublicInterceptor;

@Clear(PublicInterceptor.class)
public class SpecialistController extends CommonController{

    public void list(){
        render("/specialist_list.html");
    }

    public void detail() {
        render("/specialist_details.html");
    }
}
