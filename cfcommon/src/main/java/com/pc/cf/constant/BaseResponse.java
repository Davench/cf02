package com.pc.cf.constant;

import java.util.HashMap;

/**
 * @author malongbo
 * @date 2015/1/17
 * @package com.pet.project.bean
 */
public class BaseResponse {

	private Integer code = Code.SUCCESS;

	private String message;

	private String token;
	
	private HashMap<String, Object> data;

	public BaseResponse() {

	}

	public BaseResponse(String message) {
		this.message = message;
	}

	public BaseResponse(Integer code) {
		this.code = code;
	}

	public BaseResponse(Integer code,HashMap<String, Object> data) {
		this.code = code;
		this.data = data;
	}
	
	public BaseResponse(Integer code, String message, String token) {
		this.code = code;
		this.message = message;
		this.token = token;
	}

	public BaseResponse(Integer code, String message) {
		this.code = code;
		this.message = message;
	}

	public BaseResponse setCodeInfo(boolean status, String message) {
		this.code = status ? Code.SUCCESS : Code.FAIL;
		this.message = message;
		return this;
	}

	public BaseResponse setCodeInfo(Integer code, String message) {
		this.code = code;
		this.message = message;
		return this;
	}

	public BaseResponse setCode(boolean status) {
		this.code = status ? Code.SUCCESS : Code.FAIL;
		return this;
	}

	public BaseResponse setCode(Integer code) {
		this.code = code;
		return this;
	}

	public BaseResponse setMessage(String message) {
		this.message = message;
		return this;
	}

	public Integer getCode() {
		return code;
	}

	public String getMessage() {
		return message;
	}

	public String getToken() {
		return token;
	}

	public HashMap<String, Object> getData() {
		return data;
	}
	
	public BaseResponse setToken(String token) {
		this.token = token;
		return this;
	}

}
