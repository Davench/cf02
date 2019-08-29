package com.pc.cf.constant;

import java.util.HashMap;

public class CommonConstant {

	public  static HashMap<Integer,String> cities = new HashMap<>();

	public  static HashMap<Integer,String> operations = new HashMap<Integer,String>(){{
		put(1,"生产型");
		put(2,"贸易型");
		put(3,"服务型");
		put(4,"研发型");
		put(5,"其他型");
	}};

	public  static HashMap<Integer,String> types = new HashMap<Integer,String>(){{
		put(1,"国有企业");
		put(2,"集体所有制");
		put(3,"私营企业");
		put(4,"股份制企业");
		put(5,"联营企业");
		put(6,"外商投资企业");
		put(7,"个人独资企业");
		put(8,"港、澳、台");
		put(9,"股份合作企业");
	}};
	/**
	 * 发布需求附件
	 */
	public static final int file_release_demand = 0;
	/**
	 * 报价附件
	 */
	public static final int file_take_demand = 1;

	public static final int file_release_server = 2;

	public static final int file_release_crowd = 3;

	public static final int authentication_perfect_no = 0;//未完善资料
	public static final int authentication_perfect_yes = 1;//完善资料成功
	public static final int authentication_yes = 3;//已经认证
	public static final int authentication_failure = 4;//认证驳回
	public static final int authentication_waiting = 5;//认证等待

	public static final int type_demand = 0;
	public static final int type_serve = 1;

	//审核
	public static final int demand_examine = 0;
	//招标中
	public static final int demand_tender = 1;
	//双方确认中
	public static final int demand_wait = 8;
	//签署合同
	public static final int demand_contract = 2;
	//项目进行中
	public static final int demand_handing = 3;
	//锁定暂停
	public static final int demand_locking = 4;
	//已完结
	public static final int demand_complete = 5;
	//已关闭
	public static final int demand_closed = 6;

	//审核失败
	public static final int demand_examine_failure= 7;

	public  static HashMap<Integer,String> demands = new HashMap<Integer,String>(){{
		put(demand_examine,"审核");
		put(demand_tender,"招标中");
		put(demand_contract,"签署合同");
		put(demand_handing,"项目进行中");
		put(demand_locking,"锁定暂停");
		put(demand_complete,"已完结");
		put(demand_closed,"已关闭");
		put(demand_examine_failure,"审核失败");
		put(demand_wait,"双方确认中");
	}};
	/**
	 * 页面限制
	 */
	public static final int limit = 10;
	
	/**
	 * 页面限制
	 */
	public static final String auth = "http://public.mishee.cn/user/auth?";
}
