package com.pc.cf.model.service;

import com.pc.cf.model.Codes;

public class CodesService {
    public static final Codes dao = new Codes().dao();

    public static Codes findByCode(String code){
        return dao.findFirst("select * from codes where code = '"+code+"'");
    }

}
