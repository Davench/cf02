package com.pc.cf.model.service;

import com.pc.cf.model.Goods;

public class GoodsService {
    public static final Goods dao = new Goods().dao();

    public static Goods findByCode(String code) {
        return dao.findFirst("select * from codes where code = '" + code + "'");
    }

}
