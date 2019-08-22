package com.clay.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class BlogController {
	
	@RequestMapping("writeBlog.html")
	public String writeBlog(){
		return "testBlog";
	}
	@RequestMapping(value = "uploadImg",method = RequestMethod.POST)
	public @ResponseBody Object uploadImg(@RequestParam("FileName")MultipartFile myFileName,HttpSession session,HttpServletRequest request) throws IllegalStateException, IOException{
		String realName = "";
		String realPath = "";
		if (myFileName != null) {
			String fileName = myFileName.getOriginalFilename();
			String fileNameExtension = fileName.substring(fileName.indexOf("."), fileName.length());
			// 生成实际存储的真实文件名
			realName = UUID.randomUUID().toString() + fileNameExtension;
			realPath = session.getServletContext().getRealPath("/upload");
			File file =new File(realPath);  
			if  (!file .exists()  && !file .isDirectory()){    
			    file .mkdir(); 
			} 
			File uploadFile = new File(realPath, realName);
			myFileName.transferTo(uploadFile);
		}

		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("url", request.getContextPath() + "/upload/" + realName);
		System.out.println(resultMap);
		return resultMap;
	}
}
