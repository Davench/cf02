package com.pc.cf.model.service;

import com.jfinal.plugin.activerecord.Db;
import com.pc.cf.model.Quotedprice;

import java.util.List;

/**
 * 本 demo 仅表达最为粗浅的 jfinal 用法，更为有价值的实用的企业级用法
 * 详见 JFinal 俱乐部: http://jfinal.com/club
 * 
 * BlogService
 * 所有 sql 与业务逻辑写在 Service 中，不要放在 Model 中，更不
 * 要放在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
public class QuotedPriceService {
	
	/**
	 * 所有的 dao 对象也放在 Service 中
	 */
	public static final Quotedprice dao = new Quotedprice().dao();
	
	public static Quotedprice findById(int id){
		return dao.findById(id);
	}

	public static Quotedprice findByUserIdAndDemandId(int userId,int demandId){
		return dao.findFirst(" select * from  quotedprice where demandid = "+ demandId + " and userid = "+userId);
	}

	public static List<Quotedprice> findByDemandId(int demandId){
		return dao.find(" select * from  quotedprice where demandid = "+ demandId);
	}

	public static List<Quotedprice> findByDemandId(int userId,int demandId){
		return dao.find(" select * from  quotedprice where demandid = "+ demandId + " and userid = "+userId);
	}

	public static long findCountByDemandId(int demandId){
		return Db.queryLong(" select count(*) from  quotedprice where demandid = "+demandId);
	}

}
