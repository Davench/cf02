package com.pc.cf.controller;

import com.alibaba.fastjson.JSONObject;
import com.jfinal.aop.Clear;
import com.pc.cf.constant.*;
import com.pc.cf.interceptor.PublicInterceptor;
import com.pc.cf.model.Codes;
import com.pc.cf.model.Userinfo;
import com.pc.cf.model.service.CodesService;
import com.pc.cf.model.service.UserInfoService;
import com.pc.lon.util.Handler_EncryptAndDecrypt;
import com.pc.lon.util.Handler_Random2;
import org.apache.commons.lang.StringUtils;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;

/**
 * 乡味记忆
 * 
 * @author pancheng
 *
 */
@Clear(PublicInterceptor.class)
public class RegistController extends CommonController {

	/**
	 * 乡味首页 1 获取标签 2 获取分类 3 获取列表数据
	 */
	public void go() {
		render("/register_verify_phone.html");
	}

	public void regist1() {
		String code = getPara("code");
		String number = getPara("number");
        if (StringUtils.isEmpty(number)||StringUtils.isEmpty(code)) {
			BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.name_code_empty);
			renderJson(response);
			return;
		}
        boolean validate = MyCaptchaRender.validate(this, code);
		System.out.println(validate);
        if (!validate) {
			BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.code_failure);
			renderJson(response);
			return;
		}

		Userinfo user = UserInfoService.findByName(number);
        if(user!=null){
        	BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.regist_has);
			renderJson(response);
			return;
        }
        HashMap<String, Object> data = new HashMap<>();
        data.put("number", number);
        BaseResponse response = new BaseResponse(Code.SUCCESS,data);
		renderJson(response);
	}

	@Clear(PublicInterceptor.class)
	public void getCode(){
		String number = getPara("number");
		String phone = getPara("phone");
		if (StringUtils.isEmpty(number)) {
			BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.mobile_invalid);
			renderJson(response);
			return;
		}
		Userinfo user = UserInfoService.findByNameAndPhone(number,phone);
		if(user!=null){
			BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.regist_has2);
			renderJson(response);
			return;
		}

		setAttr("number", number);
		//修改为您的apikey.apikey可在官网（http://www.yuanpian.com)登录后获取
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
				BaseResponse response = new BaseResponse(Code.SUCCESS);
				renderJson(response);
			}else{
				BaseResponse response = new BaseResponse(Code.FAIL);
				renderJson(response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			BaseResponse response = new BaseResponse(Code.FAIL);
			renderJson(response);
		}
	}

	@Clear(PublicInterceptor.class)
	public void getCode2(){
		String phone = getPara("phone");
		Userinfo user = UserInfoService.findByPhone(phone);
		if(user==null){
			BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.regist_no);
			renderJson(response);
			return;
		}
		//修改为您的apikey.apikey可在官网（http://www.yuanpian.com)登录后获取
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
				BaseResponse response = new BaseResponse(Code.SUCCESS);
				renderJson(response);
			}else{
				BaseResponse response = new BaseResponse(Code.FAIL);
				renderJson(response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			BaseResponse response = new BaseResponse(Code.FAIL);
			renderJson(response);
		}
	}

	public void go2() {
		String number = getPara("number");
		setAttr("number", number);
		render("/register_set_data.html");
	}
	
	public void go3() {
		render("/register_over.html");
	}
	
	public void go4() {
		redirect("/");
	}
	
	public void regist2() {
		String code = getPara("code");

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

		String number = getPara("number");
		String phone = getPara("phone");
		String password = getPara("password");
		if (StringUtils.isEmpty(number)||StringUtils.isEmpty(code)||StringUtils.isEmpty(phone)||StringUtils.isEmpty(password)) {
			BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.phone_code_empty);
			renderJson(response);
			return;
		}
		Userinfo user = UserInfoService.findByNameAndPhone(number,phone);
        if(user!=null){
        	BaseResponse response = new BaseResponse(Code.FAIL,Constant.ResultInfo.regist_has2);
			renderJson(response);
			return;
        }
		
        user = new Userinfo();
        user.setCreatdate((int)(System.currentTimeMillis()/1000));
        user.setNumber(number);
        user.setPassword(Handler_EncryptAndDecrypt.md5Encrypt(password));
        user.setPhone(phone);
        boolean result = user.save();
        if(result){
        	BaseResponse response = new BaseResponse(Code.SUCCESS);
    		renderJson(response);
        }else{
        	BaseResponse response = new BaseResponse(Code.FAIL,"注册失败");
    		renderJson(response);
        }
	}
	
	//生成图片
    public void captcha(){
        render(new MyCaptchaRender(60,22,4,true));
    }
}
