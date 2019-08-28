package com.clay.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.clay.entity.Identity;
import com.clay.entity.Record;
import com.clay.entity.User;
import com.clay.pojo.BlogVo;
import com.clay.pojo.PagePojo;
import com.clay.pojo.RecordVo;
import com.clay.service.BlogService;
import com.clay.service.IdentityService;
import com.clay.service.RecordService;
import com.clay.service.UserService;
import com.clay.tools.Constants;
import com.google.gson.Gson;

@Controller
public class PersonController {
	
	@Resource
	private RecordService recordService;
	
	@Resource
	private UserService userService;
	
	@Resource
	private BlogService blogService;
	
	@Resource
	private IdentityService identityService;
	
	@RequestMapping("/personal.html")
	public String personal(HttpSession session, HttpServletRequest request) {
		return "personal";
	}
	
	@RequestMapping("/personal_acc.html")
	public String personal_acc(HttpSession session, HttpServletRequest request) {
		return "personal_acc";
	}
	
	@RequestMapping("/personal_blog.html")
	public String personal_blog(HttpSession session, HttpServletRequest request) {
		return "personal_blog";
	}
	
	@RequestMapping("/personal_init.html")
	public String personal_init(HttpSession session, HttpServletRequest request) {
		return "personal_init";
	}
	
	@RequestMapping("/personal_record.html")
	public String personal_record(HttpSession session, HttpServletRequest request) {
		return "personal_record";
	}
	
	@RequestMapping("/personal_message.html")
	public String personal_message(HttpSession session, HttpServletRequest request) {
		return "personal_message";
	}
	
	@RequestMapping("/personal_identity.html")
	public String personal_identity(HttpSession session, HttpServletRequest request) {
		return "personal_identity";
	}
	
	@RequestMapping("/acc_init.action")
	public void personal_acc_init(@RequestParam("userid")int userid,HttpServletResponse response, HttpServletRequest request) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		RecordVo vo = new RecordVo();
		vo.setUser_id(userid);
		vo.setStatus(0);
		int count = recordService.getCount(vo);
		
		out.print(count);
		out.flush();
		out.close();
		
	}
	
	@RequestMapping("/acc_page.action")
	public void personal_acc_page(@RequestParam("userid")int userid,@RequestParam("curr")int curr,HttpServletResponse response, HttpServletRequest request) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		RecordVo vo = new RecordVo();
		vo.setUser_id(userid);
		vo.setStatus(0);
		PagePojo<Record> list = recordService.queryByPage(vo, curr, 3);
		
		Gson gson = new Gson();
		String str = gson.toJson(list);	
		
		out.print(str);
		out.flush();
		out.close();
		
	}
	
	@RequestMapping("/acc_record.html")
	public void personal_acc_record(@RequestParam("recordid")int recordid,HttpServletResponse response, HttpServletRequest request) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		boolean deal = recordService.dealRecord(recordid);
		if(!deal){
			out.print("<script>alert('余额不足，请先充值！')</script>");
		}
		out.print("<script>window.location.href='personal_acc.html'</script>");
		out.flush();
		out.close();
	}
	
	@RequestMapping("/rej_record.html")
	public void personal_rej_record(@RequestParam("recordid")int recordid,HttpServletResponse response, HttpServletRequest request) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		boolean deal = recordService.dealRecordNot(recordid);
		out.print("<script>window.location.href='personal_acc.html'</script>");
		out.flush();
		out.close();
	}
	
	@RequestMapping("/record_init.action")
	public void personal_record_init(@RequestParam("status")int status,@RequestParam("userid")int userid,HttpServletResponse response, HttpServletRequest request) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		RecordVo vo = new RecordVo();
		if(status == 1)
			vo.setBlog_user_id(userid);
		else {
			vo.setUser_id(userid);
		}
		vo.setStatus(1);
		int count = recordService.getCount(vo);
		vo.setStatus(2);
		count += recordService.getCount(vo);
		vo.setStatus(3);
		count += recordService.getCount(vo);
		vo.setStatus(4);
		count += recordService.getCount(vo);
		
		System.out.println(count);
		
		out.print(count);
		out.flush();
		out.close();
		
	}
	
	@RequestMapping("/record_page.action")
	public void personal_record_page(@RequestParam("status")int status,@RequestParam("userid")int userid,HttpServletResponse response, HttpServletRequest request) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		RecordVo vo = new RecordVo();
		if(status == 1)
			vo.setBlog_user_id(userid);
		else {
			vo.setUser_id(userid);
		}
		vo.setStatus(1);
		PagePojo<Record> list = recordService.queryByPage(vo, 1, 10000);
		vo.setStatus(2);
		PagePojo<Record> list2 = recordService.queryByPage(vo, 1, 10000);
		vo.setStatus(3);
		PagePojo<Record> list3 = recordService.queryByPage(vo, 1, 10000);
		vo.setStatus(4);
		PagePojo<Record> list4 = recordService.queryByPage(vo, 1, 10000);
		
		list.getData().addAll(list2.getData());
		list.getData().addAll(list3.getData());
		list.getData().addAll(list4.getData());
		for (Record item : list.getData()) {
			System.out.println(item.getBlog_id());
		}
		Gson gson = new Gson();
		String str = gson.toJson(list);	
		
		out.print(str);
		out.flush();
		out.close();
		
	}
	
	@RequestMapping("/record_success.html")
	public void personal_record_success(@RequestParam("status")int status,@RequestParam("recordid")int recordid,HttpServletResponse response, HttpServletRequest request) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		boolean deal = false;
		if(status == 2)
			deal = recordService.verifyRecordByUser(recordid);
		else {
			deal = recordService.verifyRecordByBlog(recordid);
		}
		if(!deal)
			out.print("<script>alert('未知的错误！')</script>");
		else {
			out.print("<script>alert('已确认订单')</script>");
		}
		out.print("<script>window.location.href='personal_record.html?status=" + status + "'</script>");
		out.flush();
		out.close();
	}
	
	@RequestMapping("/record_break.html")
	public void personal_record_break(@RequestParam("status")int status,@RequestParam("recordid")int recordid,HttpServletResponse response, HttpServletRequest request) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		boolean deal = false;
		if(status == 2)
			deal = recordService.cancelRecordByUser(recordid);
		else {
			deal = recordService.cancelRecordByBlog(recordid);
		}
		if(!deal)
			out.print("<script>alert('未知的错误！')</script>");
		else {
			out.print("<script>alert('销毁成功！')</script>");
		}
		out.print("<script>window.location.href='personal_record.html?status=" + status + "'</script>");
		out.flush();
		out.close();
	}
	
	@RequestMapping(value = "/upload/headImg.action", method = {RequestMethod.POST})
	@ResponseBody
	public Object headImg(@RequestParam(value="file",required=false) MultipartFile file, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String prefix="";
	    String dateStr="";
	    String filedir="";
	    //保存上传
	    OutputStream out = null;
	    InputStream fileInput=null;
	    try{
	        if(file!=null){
	            String originalName = file.getOriginalFilename();
	            String filepath = request.getServletContext().getRealPath("/statics/images/") +dateStr+"_"+ originalName;
	            filepath = filepath.replace("\\", "/");
	            File files=new File(filepath);
	            //打印查看上传路径
	            if(!files.getParentFile().exists()){
	                files.getParentFile().mkdirs();
	            }
	            file.transferTo(files);
	        }
	    }catch (Exception e){
	    }finally{
	        try {
	            if(out!=null){
	                out.close();
	            }
	            if(fileInput!=null){
	                fileInput.close();
	            }
	        } catch (IOException e) {
	        }
	    }
	    Map<String,Object> map2=new HashMap<>();
	    Map<String,Object> map=new HashMap<>();
	    map2.put("src","statics/images/" + dateStr + "_" + filedir + "." + prefix);
	    map.put("code",0);
	    map.put("msg","");
	    map.put("data",map2);
	    return map;
	}
	
	@RequestMapping("/personal_modify.html")
	public void personal_modify(@RequestParam("userid")Integer user_id,@RequestParam("sex")String sex,@RequestParam("username")String username,@RequestParam("file")String pic,HttpServletResponse response, HttpServletRequest request) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		boolean deal = false;
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute(Constants.USER_SESSION);
		user.setUser_img("statics/images/" + pic);
		user.setUser_name(username);
		user.setUser_sex(sex);
		user.setUser_id(user_id);
		deal = userService.updateUser(user);
		if(!deal)
			out.print("<script>alert('未知的错误！')</script>");
		else {
			session.setAttribute(Constants.USER_SESSION, user);
			out.print("<script>alert('修改成功！')</script>");
		}
		out.print("<script>window.location.href='personal.html'</script>");
		out.flush();
		out.close();
	}
	
	@RequestMapping("/personal_init_so.html")
	public void personal_init_so(@RequestParam("userid")Integer userid,@RequestParam("blogid")Integer blogid,@RequestParam("money")Integer money,HttpServletResponse response, HttpServletRequest request) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		boolean deal = false;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String da = df.format(new Date());
		Record record = new Record();
		record.setRecord_money(money);
		record.setRecord_ok(0);
		record.setRecord_status(1);
		record.setRecord_starttime(da);
		User user = new User();
		Blog blog = new Blog();
		user.setUser_id(userid);
		blog.setBlog_id(blogid);
		record.setUser_id(user);
		record.setBlog_id(blog);
		try {
			deal = recordService.insertRecord(record);
		} catch (Exception e) {
			// TODO: handle exception
			out.print("<script>alert('未找到博客')</script>");
		}
		out.print("<script>alert('发起成功！')</script>");
		out.print("<script>window.location.href='personal_init.html'</script>");
		out.flush();
		out.close();
	}
	
	@RequestMapping("/personal_init_myblog.html")
	public void personal_init_myblog(@RequestParam("userid")Integer userid,HttpServletResponse response, HttpServletRequest request) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		BlogVo vo = new BlogVo();
		vo.setUser_id(userid);
		PagePojo<Blog> list = blogService.queryByPage(vo, 1, 10000);
		Gson gson = new Gson();
		String str = gson.toJson(list);
		out.print(str);
		out.flush();
		out.close();
	}
	
	@RequestMapping("/blog_number.action")
	public void blog_number(@RequestParam("userid")Integer userid,HttpServletResponse response, HttpServletRequest request) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		boolean deal = false;
		BlogVo vo = new BlogVo();
		vo.setUser_id(userid);
		int count = blogService.getCount(vo);
		out.print(count);
		out.flush();
		out.close();
	}
	
	@RequestMapping("/myblog_All.action")
	public void myblog_All(@RequestParam("curr")int curr,@RequestParam("userid")Integer userid,HttpServletResponse response, HttpServletRequest request) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		BlogVo vo = new BlogVo();
		vo.setUser_id(userid);
		PagePojo<Blog> list = blogService.queryByPage(vo, curr, 3);
		Gson gson = new Gson();
		String str = gson.toJson(list);
		out.print(str);
		out.flush();
		out.close();
	}
	
	@RequestMapping("/blog_del.html")
	public void blog_del(@RequestParam("blogid")Integer blogid,HttpServletResponse response, HttpServletRequest request) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		boolean deal = true;
		//deal = blogService.deleteBlog(blogid);
		if(!deal)
			out.print("<script>alert('删除失败！')</script>");
		else{
			out.print("<script>alert('删除成功！')</script>");
		}
		out.print("<script>window.location.href='personal_blog.html'</script>");
		out.flush();
		out.close();
	}
	
	@RequestMapping("/renzheng.html")
	public void renzheng(@RequestParam("file")String filename,@RequestParam("identity")String identity,@RequestParam("username")String username,HttpServletResponse response, HttpServletRequest request) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		boolean deal = true;
		Identity iden = new Identity();
		iden.setIdentity_idcard(identity);
		iden.setIdentity_img(filename);
		iden.setIdentity_name(username);
		HttpSession session = request.getSession();
		User userid = (User)session.getAttribute(Constants.USER_SESSION);
		userid.setUser_identity(1);
		iden.setUser_id(userid);
		userService.updateUser(userid);
		session.setAttribute(Constants.USER_SESSION, userid);
		deal = identityService.insertIdentity(iden);
		if(!deal)
			out.print("<script>alert('认证失败！')</script>");
		out.print("<script>alert('审核中！')</script>");
		out.flush();
		out.close();
	}
	
}
