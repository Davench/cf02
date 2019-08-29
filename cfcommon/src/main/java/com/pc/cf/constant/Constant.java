package com.pc.cf.constant;

public class Constant {
	
	public static final class ResultInfo {

		public static String feedback_success = "意见反馈成功";
		public static String feedback_failure = "意见反馈失败";
		public static String regist_has = "帐号已注册";
		public static String regist_has2 = "帐号或手机号已注册";
		public static String regist_no = "帐号未注册";
		public static String name_empty = "帐号不能为空";
		public static String mobile_invalid = "手机号码无效";
		public static String mobile_exist = "手机号码已存在";
		public static String sms_failed = "验证码发送失败";
		public static String sms_sucess = "验证码发送成功";
		public static String code_empty = "验证码不能为空";
		public static String password_empty = "密码不能为空";
		public static String code_failure = "验证码错误";
		public static String name_password_error = "帐号或密码错误";
		public static String name_password_empty = "帐号或密码不能为空";
		public static String name_code_empty = "帐号或验证码不能为空";
		public static String phone_code_empty = "手机号,验证码或密码不能为空";
		public static String login_success = "登陆成功";
		public static String user_no = "用户不存在";
		public static String sex_invalid = "性别错误";
		
		public static String deal_sucess = "操作成功";
		public static String deal_failure = "操作失败";
		public static String update_failure = "更新失败,没有任何修改内容";
		
		public static String old_error = "原密码错误";
		
		public static String old_empty = "原密码不能为空";
		public static String new_empty = "新密码不能为空";
		
		public static String token_empty = "Token 不能为空";
		public static String token_error = "Token 错误";
		
		public static String avatar_empty = "头像不能为空";
		
	}
	
	/**
	 * 类型常量
	 * 
	 * @author pancheng
	 *
	 */
	public static class Type {

		public static final int public_normal = 0;
		public static final int public_pause = 1;
		public static final int public_delete = 2;

		/**
		 * 购买和试吃类型 乡味和走街串巷
		 */
		public static final int type_farm = 1;
		public static final int type_alley = 2;
		
		/**
		 * 购买类型
		 */
		public static final int all = 0;
		/**
		 * 购买类型
		 */
		public static final int buy = -1;
		/**
		 * 试吃类型
		 */
		public static final int eat = -2;
	}
	
	public static class Public {
		public static final int public_encrypt = 1;
	}

	public static class Cache {

		public static final String cache_public_key = "publicCache";
		public static final String cache_article_key = "articleCache";

	}
	
	public static class Badge{
		/**
		 * 等待审核
		 */
		public static final int examine_wait = 0;
		/**
		 * 审核成功
		 */
		public static final int examine_sucess = 1;
		/**
		 * 审核失败
		 */
		public static final int examine_fail = 2;
		
		/**
		 * 未删除
		 */
		public static final int delete_no = 0;
		/**
		 * 已删除
		 */
		public static final int delete_has = 1;
	}

	public static class Article {
		public static final int small_photo = 0;
		public static final int more_video = 1;
		public static final int more_photo = 2;
		public static final int big_photo = 3;
		public static final int key_photo = 4;
		public static final int no_photo = 5;
		
		public static final String small_photo_key = "small_photo";
		public static final String more_video_key = "more_video";
		public static final String more_photo_key = "more_photo";
		public static final String big_photo_key = "big_photo";
		public static final String key_photo_key = "key_photo";
		public static final String no_photo_key = "no_photo";
		
		public static final int key_food = 1;
		public static final int key_alley = 2;
		public static final int key_news = 3;
		public static final int key_inquire = 4;
		public static final int key_scenery = 5;
	}
	
	public static class QiNiu {
		public static final String temp = "temp";
		public static final String public_image = "public-news";
//		public static final String public_inquire = "public-inquire";
//		public static final String public_scenery = "public-scenery";
		
		
		public static final String big_key = "imageView2/2/w/1000/h/500/format/webp/q/100|imageslim";
		public static final String small_key = "imageView2/2/w/300/h/150/format/webp/q/75|imageslim";
	}
}
