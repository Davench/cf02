package com.pc.cf.model.service;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.SqlPara;
import com.pc.cf.model.Server;

import java.util.List;

/**
 * 本 demo 仅表达最为粗浅的 jfinal 用法，更为有价值的实用的企业级用法
 * 详见 JFinal 俱乐部: http://jfinal.com/club
 * 
 * BlogService
 * 所有 sql 与业务逻辑写在 Service 中，不要放在 Model 中，更不
 * 要放在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
public class ServeService {
	
	/**
	 * 所有的 dao 对象也放在 Service 中
	 */
	public static final Server dao = new Server().dao();
	
	public static Server findById(int id){
		return dao.findById(id);
	}

	public static List<Server> findServerList(int goodId) {
		String sql = "select * from server";
		if (goodId !=0){
			sql = sql+" where id in (select demandid from inquiry where goodId = "+goodId+" and type = 1 )";
		}
		return dao.find(sql);
	}

	public static List<Server> findServerList3() {
		return dao.find("select * from server limit 3");
	}

	public static List<Server> findServerByCompany(int companyid) {
		return dao.find("select * from server where companyid = "+companyid);
	}

	public static long findCountBycompanyId(int companyId){
		return Db.queryLong("select count(*)  from server where companyId = "+companyId);
	}

	public static List<Server> findLimit6() {
		SqlPara sql = Db.getSqlPara("company.getLimit");
		return dao.find(sql);
	}
}
