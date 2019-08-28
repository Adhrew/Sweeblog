package com.clay.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.clay.entity.Blog;
import com.clay.entity.Type;
import com.clay.entity.User;
import com.clay.service.BlogService;
import com.clay.service.TypeService;
import com.clay.tools.Constants;
import com.google.gson.Gson;

@Controller
public class BlogController {
	
	@Resource
	private BlogService blogService;
	
	@Resource
	private TypeService typeService; 
	
	@RequestMapping("writeBlog.html")
	public String writeBlog(HttpServletRequest request,HttpServletResponse reponse) throws IOException{
		 request.setCharacterEncoding("UTF-8");
	     reponse.setContentType("text/html;charset=UTF-8"); 
	     PrintWriter out=reponse.getWriter();
	     List<Type> typelist=typeService.queryAll();
	     System.out.println("-->");
	     System.out.println(typelist);
	     request.setAttribute("typelist",typelist);
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
	
	@RequestMapping(value="/writedone.html",method=RequestMethod.POST)
	public String writedone(HttpServletRequest request,HttpServletResponse reponse,String title,String text,String typename) throws Exception{
		request.setCharacterEncoding("UTF-8");
		reponse.setContentType("text/html;charset=UTF-8");
		PrintWriter out=reponse.getWriter();
		System.out.println(title);
		System.out.println(text);
		Blog blog=new Blog();
		HttpSession session=request.getSession();
		
		User a=(User)session.getAttribute(Constants.USER_SESSION);
		blog.setUser_id(a);
		blog.setBlog_text(text);
		blog.setBlog_title(title);
		Type type=typeService.queryTeByname(typename);
		blog.setType_id(type);
		if(blogService.writeBlog(blog)){
		   	return "blog";
		}
		else{
		   	return "testBlog";
		}
		
	}
}
