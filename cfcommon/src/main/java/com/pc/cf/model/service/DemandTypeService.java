package com.pc.cf.model.service;

import com.pc.cf.model.Demandtype;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * 本 demo 仅表达最为粗浅的 jfinal 用法，更为有价值的实用的企业级用法
 * 详见 JFinal 俱乐部: http://jfinal.com/club
 * 
 * BlogService
 * 所有 sql 与业务逻辑写在 Service 中，不要放在 Model 中，更不
 * 要放在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
public class DemandTypeService {
	
	/**
	 * 所有的 dao 对象也放在 Service 中
	 */
	public static final Demandtype dao = new Demandtype().dao();
	
	public static Demandtype findById(int id){
		return dao.findById(id);
	}

	public static HashMap<String,ArrayList<String>> getAll(){
		List<Demandtype> demandtypes = dao.find("select * from demandtype");
		HashMap<String,ArrayList<String>> datas = new HashMap<>();
		HashMap<Integer,String> demandtype1 = new HashMap<Integer,String>();
		for (Demandtype demandtype:
		demandtypes) {
			if(demandtype.getParaent() == 0){
				demandtype1.put(demandtype.getId(),demandtype.getName());
				datas.put(demandtype.getName(),new ArrayList<String>());
			}else{
				String key = demandtype1.get(demandtype.getParaent());
				if (!datas.containsKey(key)){
					datas.put(key,new ArrayList<String>());
				}
				ArrayList<String> demands = datas.get(key);
				demands.add(demandtype.getName());
			}
		}
		return datas;
	}

	public static HashMap<String,Integer> getMaps(){
		List<Demandtype> demandtypes = dao.find("select * from demandtype");
		HashMap<String,Integer> demandtype1 = new HashMap<String,Integer>();
		for (Demandtype demandtype:
				demandtypes) {
			demandtype1.put(demandtype.getName(),demandtype.getId());
		}
		return demandtype1;
	}

	public static HashMap<Integer,String> getMaps2(){
		List<Demandtype> demandtypes = dao.find("select * from demandtype");
		HashMap<Integer,String> demandtype1 = new HashMap<Integer,String>();
		for (Demandtype demandtype:
				demandtypes) {
			demandtype1.put(demandtype.getId(),demandtype.getName());
		}
		return demandtype1;
	}

	public static List<Demandtype> getFirstKey(){
		return dao.find("select * from demandtype where paraent = 0");
	}
}
