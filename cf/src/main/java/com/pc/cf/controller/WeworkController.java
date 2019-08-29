package com.pc.cf.controller;

import com.jfinal.aop.Clear;
import com.pc.cf.constant.CommonConstant;
import com.pc.cf.constant.CommonController;
import com.pc.cf.interceptor.PublicInterceptor;
import com.pc.cf.model.*;
import com.pc.cf.model.service.CompanyService;
import com.pc.cf.model.service.DemandTypeService;
import com.pc.cf.model.service.EnclosureService;

import java.util.List;

public class WeworkController extends CommonController {

    @Clear(PublicInterceptor.class)
    public void detail() {
        int id = getParaToInt("id");
        Demand crowd = new Demand().dao().findById(id);
        List<Crowditem> items = new Crowditem().dao().find(" select * from crowditem where crowdid = "+id);
        Company company = CompanyService.findById(crowd.getCompanyid());
        if (company != null) {
            crowd.put("company", company);
        } else {
            crowd.put("company", null);
        }
        crowd.put("items",items);
        Enclosure enclosure = EnclosureService.getEnclosureByDemand(crowd.getId(), CommonConstant.file_release_crowd);
        crowd.put("enclosure", enclosure);
        crowd.put("from1", DemandTypeService.getMaps2().get(crowd.getDemandtype1()));
        crowd.put("from2",DemandTypeService.getMaps2().get(crowd.getDemandtype2()));
        crowd.put("num",items.size());
        setAttr("crowd",crowd);
        render("/wework_details.html");
    }

    public void submit() {
        render("/submit_offer_2.html");
    }

    public void result() {
        render("/offer_review_2.html");
    }
}
