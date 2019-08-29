package com.pc.cf.model.service;

import com.pc.cf.model.Authentication;

/**
 * 本 demo 仅表达最为粗浅的 jfinal 用法，更为有价值的实用的企业级用法
 * 详见 JFinal 俱乐部: http://jfinal.com/club
 * 
 * BlogService
 * 所有 sql 与业务逻辑写在 Service 中，不要放在 Model 中，更不
 * 要放在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
public class AuthenticationService {
	
	/**
	 * 所有的 dao 对象也放在 Service 中
	 */
	public static final Authentication dao = new Authentication().dao();
	
	public static Authentication findById(int id){
		return dao.findById(id);
	}
}
