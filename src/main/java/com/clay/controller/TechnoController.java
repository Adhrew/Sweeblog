package com.clay.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.clay.entity.Blog;
import com.clay.entity.Type;
import com.clay.pojo.BlogVo;
import com.clay.pojo.PagePojo;
import com.clay.service.BlogService;
import com.clay.service.TypeService;
import com.google.gson.Gson;

@Controller
public class TechnoController {
    @Resource   
	private BlogService blogService;
    
    @Resource
    private TypeService typeService;
	
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
	
	@RequestMapping("/mineblog.html")
	public String mine(HttpServletRequest request,HttpServletResponse response, String blog_id) throws UnsupportedEncodingException{
	   request.setCharacterEncoding("UTF-8");
       response.setContentType("text/html;charset=UTF-8");
	   Integer blogId = Integer.valueOf(blog_id);
	   Blog blog = blogService.queryById(blogId);
       request.setAttribute("name", blog.getUser_id().getUser_name());
       request.setAttribute("title", blog.getBlog_title());
       request.setAttribute("text", blog.getBlog_text());
	   return "mineblog";	
	}
	
	
	@RequestMapping("/blogtitle")
	public void blogtitle(HttpServletRequest request,HttpServletResponse response) throws IOException{
		 request.setCharacterEncoding("UTF-8");
	     response.setContentType("text/html;charset=UTF-8"); 
	     PrintWriter out=response.getWriter();
	     List<Type> typelist=typeService.queryTe();
	     System.out.println("-->");
	     System.out.println(typelist);
	     Gson g=new Gson();
	     String str=g.toJson(typelist);
	     out.print(str);
	     out.flush();
	     out.close();
	}
	
	@RequestMapping("/Tyajax")
	public void blogBytypename(HttpServletRequest request,HttpServletResponse response,String key) throws IOException
	{
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
		 vo.setType_name(key);
		 PagePojo<Blog> list=blogService.queryByPage(vo, page, pageSize);
		 Gson g=new Gson();
	     String str=g.toJson(list);
	     out.print(str);
	     out.flush();
	     out.close();
	}
	
	
	
}
