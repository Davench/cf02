package com.pc.cf.constant;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;







public class SMSsend {

	private static final String addr = "http://api.sms.cn/sms/";
	//private static final String userId = "lekzs";
	
	/*
	* 如uid是：test，登录密码是：123123
	pwd=md5(123123test),即
	pwd=b9887c5ebb23ebb294acab183ecf0769

	*/
	//private static final String pwd = "deadd4440fca3c6519b101208d793a6a";



	public String send(String msgContent, String mobile,String template,String userId,String pwd) throws Exception {






		String ss="{\"code\":\""+msgContent+"\"}";

		//组建请求
		String straddr = addr +
				"?ac=send&uid="+userId+
				"&pwd="+pwd+
				"&template="+template+
				"&mobile="+mobile+
				"&content="+ss;


		StringBuffer sb = new StringBuffer(straddr);
		//	System.out.println("URL:"+sb);

		//发送请求
		URL url = new URL(sb.toString());
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		connection.setRequestMethod("POST");
		BufferedReader in = new BufferedReader(new InputStreamReader(
				url.openStream()));

		//返回结果
		String inputline = in.readLine();

		StringBuffer sb1=new StringBuffer();

		for (int i = 0; i < inputline.length(); i++) {
			sb1.append(inputline.charAt(i));
		}

		System.out.println(sb1);

		int ck=Integer.valueOf(sb1.substring(9, 12));



		String ru1=sb1.substring(9, 12);

		String ru2 = sb1.substring( sb1.lastIndexOf(":")+2,sb1.indexOf("\"}"));


		String	ru="错误代码"+ru1+":"+ru2;




		if(ck>100) return ru;
		else return null;


	}



}