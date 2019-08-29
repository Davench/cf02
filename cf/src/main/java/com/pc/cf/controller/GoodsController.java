package com.pc.cf.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.SqlPara;
import com.pc.cf.constant.CommonController;
import com.pc.cf.model.Goods;
import com.pc.cf.model.Inquiry;
import com.pc.cf.model.service.DemandTypeService;
import com.pc.cf.model.service.GoodsService;
import com.pc.cf.model.service.InquiryService;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/**
 * 乡味记忆
 * 
 * @author pancheng
 *
 */
public class GoodsController extends CommonController {

	public void index(){
		JSONObject jsonObject = new JSONObject();
		jsonObject.putAll(DemandTypeService.getAll());
		setAttr("types", jsonObject);
		setAttr("type",getPara("type"));
		render("/select_goods.html");
	}

	public void list() {
		int offset = getParaToInt("offset");
		int limit = getParaToInt("limit");
		int page = offset/limit+1;
		int type = getParaToInt("type");
		SqlPara sql = Db.getSqlPara("goods.getGoods");
		Page<Goods> goods = GoodsService.dao.paginate(page, limit,sql);

		HashMap<String,Object> datas = new HashMap<>();
		datas.put("total",goods.getTotalRow());
		datas.put("rows",goods.getList());
		JSONObject js = (JSONObject) JSONObject.toJSON(datas);
		JSONArray jsonArray= ((JSONArray)(js.get("rows")));
		for (int i =0;i<jsonArray.size();i++){
			JSONObject goods1 = jsonArray.getJSONObject(i);
			List<Inquiry> goods2 = InquiryService.dao.find(" select * from inquiry where type = "+type+" and goodId ="+goods1.getInteger("id"));
			HashSet<Integer> ids = new HashSet<>();
			for (Inquiry inquiry:goods2) {
				ids.add(inquiry.getDemandid());
			}
			goods1.put("counts",ids.size());
		}

		renderJson(js.toJSONString());
	}
}
