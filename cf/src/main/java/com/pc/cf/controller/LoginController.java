package com.pc.cf.controller;

import com.alibaba.fastjson.JSONObject;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.plugin.ehcache.CacheKit;
import com.pc.cf.constant.*;
import com.pc.cf.interceptor.PublicInterceptor;
import com.pc.cf.interceptor.UserInterceptor;
import com.pc.cf.model.Codes;
import com.pc.cf.model.Company;
import com.pc.cf.model.Userinfo;
import com.pc.cf.model.service.CodesService;
import com.pc.cf.model.service.UserInfoService;
import com.pc.lon.util.Handler_EncryptAndDecrypt;
import com.pc.lon.util.Handler_Random2;
import com.pc.lon.util.Handler_String;
import org.apache.commons.lang.StringUtils;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 乡味记忆
 * 
 * @author pancheng
 *
 */
public class LoginController extends CommonController {

	/**
	 * 乡味首页 1 获取标签 2 获取分类 3 获取列表数据
	 */
	public void go() {
		render("/login.html");
	}

	@Before(UserInterceptor.class)
	@Clear(PublicInterceptor.class)
	public void layout() {
		System.out.println("layout");
		CacheKit.remove("user", "user_"+getCookie("openId"));
		removeCookie("openId");
		removeCookie("number");
		redirect("/");
	}

	public void forget() {
		String phone = getPara("phone");
		if (StringUtils.isEmpty(phone)){
			setAttr("msg","手机号不能为空");
			render("/forget_password.html");
			return;
		}

		Userinfo userinfo = UserInfoService.findByNameAndPhone(phone,phone);
		if (userinfo == null){
			setAttr("msg","该手机号未注册");
			render("/forget_password.html");
			return;
		}

		String apikey = "c8c66cc09c930eb157c0c5ba2f398ceb";

		//修改为您要发送的手机号
		String mobile = null;
		try {
			mobile = URLEncoder.encode(phone, JavaSmsApi.ENCODING);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		/**************** 使用智能匹配模版接口发短信(推荐) *****************/
		//设置您要发送的内容(内容必须和某个模板匹配。以下例子匹配的是系统提供的1号模板）
		String text = "【云片网】您的验证码是1234";
		//发短信调用示例
		// System.out.println(JavaSmsApi.sendSms(apikey, text, mobile));

		/**************** 使用指定模板接口发短信(不推荐，建议使用智能匹配模版接口) *****************/
		//设置模板ID，如使用1号模板:【#company#】您的验证码是#code#
		long tpl_id = 2074018;
		//设置对应的模板变量值

		String code = Handler_Random2.generateNumberString(4);
		String tpl_value = null;
		try {
			tpl_value = URLEncoder.encode("#code#", JavaSmsApi.ENCODING) +"="
					+ URLEncoder.encode(code, JavaSmsApi.ENCODING);
			String result = JavaSmsApi.tplSendSms(apikey, tpl_id, tpl_value, mobile);
			JSONObject jsonObject = JSONObject.parseObject(result);
			if (jsonObject.containsKey("code")&&jsonObject.getInteger("code")==0){
				//发送成功
				Codes codes = new Codes();
				codes.setCode(code);
				codes.save();
			}else{
				setAttr("msg","验证码发送失败");
				render("/forget_password.html");
				return;
			}
		} catch (Exception e) {
			e.printStackTrace();
			setAttr("msg","验证码发送失败");
			render("/forget_password.html");
			return;
		}

		setAttr("phone",phone);
		render("/verify_phone.html");
	}
	public void forgetto() {
		System.out.println("layout");
		render("/forget_password.html");
	}

	public void gotoPassword(){
		String phone = getPara("phone");
		String code = getPara("code");

		if (StringUtils.isEmpty(phone)){
			setAttr("phone",phone);
			setAttr("msg","手机号不能为空");
			render("/verify_phone.html");
			return;
		}

		Codes codes = CodesService.findByCode(code);
		if (codes==null){
			setAttr("phone",phone);
			setAttr("msg","验证码错误");
			render("/verify_phone.html");
			return;
		}

		if (codes.getStatus()==1){
			setAttr("phone",phone);
			setAttr("msg","验证码已使用，请重新发送");
			render("/verify_phone.html");
			return;
		}

		codes.setStatus(1).update();
		Userinfo userInfo =  UserInfoService.findByNameAndPhone(phone,phone);
		setAttr("id",userInfo.getId());
		render("/change_password.html");
	}

	public void go2() {
		render("/complete_data_over.html");
	}

	public void changePassword() {
		int id = getParaToInt("id");
		String password = getPara("password");
		String password2 = getPara("password2");
		Userinfo userinfo = UserInfoService.findById(id);
		if (userinfo==null)
		{
			BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.mobile_invalid);
			renderJson(response);
		}
		if(!password.endsWith(password2)){
			BaseResponse response = new BaseResponse(Code.FAIL,"两次密码不对");
			renderJson(response);
		}
		userinfo.setPassword(Handler_EncryptAndDecrypt.md5Encrypt(password));
		userinfo.update();

		BaseResponse response = new BaseResponse(Code.SUCCESS);
		renderJson(response);
	}

	@Clear(PublicInterceptor.class)
	public void submit() {
		String name = getPara("name");
		String password = getPara("password");
		
		if (StringUtils.isEmpty(name)||StringUtils.isEmpty(password)) {
			BaseResponse response = new BaseResponse(Code.FAIL, Constant.ResultInfo.name_password_empty);
			renderJson(response);
			return;
		}
		
		Pattern p = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$");  
		Matcher m = p.matcher(name);  
		boolean is = m.matches();

		Userinfo user;
		if (is) {
			user = UserInfoService.findByPhone(name);
		}else{
			user = UserInfoService.findByName(name);
		}
		 
		boolean exists = false;
		if(null == user){
			exists = false;
		}else if(user.getPassword().equals(Handler_EncryptAndDecrypt.md5Encrypt(password))){
			exists = true;
			setCookie("openId", user.getId()+"", -1);
			setCookie("number", user.getNumber(), -1);
			CacheKit.put("user", "user_"+user.getId(), user);
		}
		BaseResponse response = new BaseResponse(exists ? Code.SUCCESS : Code.FAIL,
				exists ? Constant.ResultInfo.regist_has : Constant.ResultInfo.name_password_error);
		renderJson(response);
	}
	
	@Before(UserInterceptor.class)
	@Clear(PublicInterceptor.class)
	public void userinfo() {
		
		String companyNumber = getPara("number");
		String name = getPara("name");
		String contacts = getPara("contacts");
		String mobile = getPara("mobile");
		String code = getPara("code");
		String qq = getPara("qq");
		String email = getPara("email");
		String files = getPara("files");
		String web = getPara("web");
		String introduction = getPara("introduction");
		String address = getPara("address");
		String goods = getPara("goods");
		String describe = getPara("describe");
		int types = getParaToInt("types");
		int operation = getParaToInt("operation");
		int type = getParaToInt("type");
		int scale = getParaToInt("scale");

		if (Handler_String.isBlank(companyNumber
				,name
				,contacts
				,mobile
				,code
				,address
//				,goods
				,describe
				)){
			BaseResponse response = new BaseResponse(Code.FAIL,"参数不能为空");
			renderJson(response);
			return;
		}

		Codes codes = CodesService.findByCode(code);
		if (codes==null){
			BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.code_failure);
			renderJson(response);
			return;
		}

		if (codes.getStatus()==1){
			BaseResponse response = new BaseResponse(Code.FAIL,"验证码已使用，请重新发送");
			renderJson(response);
			return;
		}

		codes.setStatus(1).update();

		Company company = new Company();
		company.setType(type);
		company.setScale(scale);
		company.setAddress(address);
		company.setGoods(goods);
		company.setContacts(contacts);
		company.setDescribe(describe);
		company.setEmail(email);
		company.setIntroduction(introduction);
		company.setMobile(mobile);
		company.setName(name);
		company.setOperation(operation);
		company.setUser(getCookieToInt("openId"));
		company.setNumber(companyNumber);
		company.setPhoto(files);
		company.setQq(qq);
		company.setWeb(web);
		company.setBusiness(types);
		
		boolean is = company.save();
		
		if (is) {
			Userinfo user = new Userinfo();
			user.setId(getCookieToInt("openId"));
			user.setCompany(company.getId());
			user.setIscomplete(CommonConstant.authentication_perfect_yes);
			user.update();
			
			user = CacheKit.get("user", "user_"+getCookie("openId"));
			user.setIscomplete(CommonConstant.authentication_perfect_yes);
			user.setCompany(company.getId());
			CacheKit.put("user", "user_"+getCookie("openId"), user);
		}
		
		BaseResponse response = new BaseResponse(is ? Code.SUCCESS : Code.FAIL,
				is ? Constant.ResultInfo.deal_sucess : Constant.ResultInfo.deal_failure);
		
		renderJson(response);
	}
}
