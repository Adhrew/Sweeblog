package com.clay.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.clay.entity.Blog;
import com.clay.pojo.BlogVo; 
import com.clay.pojo.PagePojo;
import com.clay.service.BlogService;
import com.clay.service.UserService;
import com.google.gson.Gson;

@Controller
public class NeedController {
    
	@Resource 
	private UserService userService;
	
	@Resource
	private BlogService blogService;
	
	@RequestMapping("/portfolio.html")
	public String enterportfolio(){
		
		return "portfolio";
	}
	
	@RequestMapping("/Neajax")
	public void Neblog(HttpServletRequest request,HttpServletResponse response) throws IOException{
		  response.setContentType("text/html;charset=UTF-8");
		  PrintWriter out=response.getWriter();
		//  Integer page=Integer.valueOf("page");
		//  Integer pageSize=Integer.valueOf("pageSize");
		  BlogVo vo=new BlogVo();
		  vo.setStatus(1);
	//	  PagePojo<Blog> list=blogService.queryByPage(vo,page, pageSize);
		  PagePojo<Blog> list=blogService.queryByPage(vo,1, 4);
	//	  request.setAttribute("pd", list);
		  Gson g=new Gson();
		  String str=g.toJson(list);
		  System.out.println(g);
		  out.print(str);
		  out.flush();
		  out.close();
		  
	}
}
