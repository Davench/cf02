package com.pc.cf.controller;

import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.core.Controller;
import com.jfinal.upload.UploadFile;
import com.pc.cf.interceptor.PublicInterceptor;
import com.pc.cf.interceptor.UserInterceptor;

import java.io.File;
import java.util.HashMap;

public class UploadController extends Controller {
	
	@Before({UserInterceptor.class})
	@Clear(PublicInterceptor.class)
	public void img() {
		UploadFile uploadFile = getFile();
		File file = uploadFile.getFile();

//		String path = getRequest().getSession().getServletContext().getRealPath("");
//		int index = path.lastIndexOf("\\");
//		File files = new File(path.substring(0,index)+File.separator+"upload"+File.separator);
//		if(!files.exists()){
//			files.mkdirs();
//		}
//		File fi = new File(path.substring(0,index)+File.separator+"upload"+File.separator,System.currentTimeMillis()+"."+file.getName().substring(file.getName().lastIndexOf(".") + 1));

		File fi = new File(file.getParentFile().getPath(),System.currentTimeMillis()+"."+file.getName().substring(file.getName().lastIndexOf(".") + 1));
		System.out.println(file);
		System.out.println(fi);
		file.renameTo(fi);
		file.deleteOnExit();
		HashMap<String, Object> map = new HashMap<>();
		map.put("key", fi.getName());
		renderJson(map);
	}
}
