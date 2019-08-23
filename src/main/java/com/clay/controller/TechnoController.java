package com.clay.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.clay.entity.Blog;
import com.clay.pojo.BlogVo;
import com.clay.pojo.PagePojo;
import com.clay.service.BlogService;
import com.google.gson.Gson;

@Controller
public class TechnoController {
    @Resource   
	private BlogService blogService;
	
	@RequestMapping("/Teagax")
    public void offertech(HttpServletRequest request,HttpServletResponse response,String key) throws IOException{
       request.setCharacterEncoding("UTF-8");
       response.setContentType("text/html;charset=UTF-8");
          Integer page;
		  Integer pageSize;
		  if(request.getParameter("page")!=null){
		   page=Integer.valueOf(request.getParameter("page"));
		  }
		  else{
			  page=1;
		  }
		  if(request.getParameter("pageSize")!=null){
			   pageSize=Integer.valueOf(request.getParameter("pageSize"));
			  }
		  else{
			   pageSize=3;
		  }
       System.out.println(key);
       PrintWriter out=response.getWriter();
       BlogVo vo=new BlogVo();
       vo.setStatus(0);
       vo.setTitle_str_like(key);
       PagePojo<Blog> list=blogService.queryByPage(vo, page, pageSize);
       Gson g=new Gson();
       String str=g.toJson(list);
       out.print(str);
       out.flush();
       out.close();
       
    }
	
	
}
