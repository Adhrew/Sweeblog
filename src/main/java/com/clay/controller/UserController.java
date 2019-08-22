package com.clay.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.annotation.Resource;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.QuerySendDetailsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.QuerySendDetailsResponse;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.clay.entity.Blog;
import com.clay.entity.User;
import com.clay.service.UserService;
import com.clay.service.impl.BlogServiceImpl;
import com.clay.tools.Constants;

@Controller
public class UserController {

	//产品名称:云通信短信API产品,开发者无需替换
    //static final String product = "Dysmsapi";
    //产品域名,开发者无需替换
    //static final String domain = "dysmsapi.aliyuncs.com";

    // TODO 此处需要替换成开发者自己的AK(在阿里云访问控制台寻找)
//    static final String accessKeyId = "LTAIR96drgLD5lHz";
//    static final String accessKeySecret = "e0PY5NzJQY5eu8klmiEjtKBhZbxhKO";
//    static String phone;
//    static String random;
    
    /**
     * @生成一个6位的随机码  
     */
//    public static String createRandNum() {
//        Random random = new Random();
//        StringBuffer sb = new StringBuffer();
//        for(int i = 0; i <= 5; i++) {
//            String s = random.nextInt(10) + "";
//            sb.append(s);
//        }
//        return sb.toString();
//    }

    
//    public static SendSmsResponse sendSms(String phone) throws Exception {
//
//        //可自助调整超时时间
//        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
//        System.setProperty("sun.net.client.defaultReadTimeout", "10000");
//
//        //初始化acsClient,暂不支持region化
//        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
//        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
//        IAcsClient acsClient = new DefaultAcsClient(profile);
//
//        //组装请求对象-具体描述见控制台-文档部分内容
//        SendSmsRequest request = new SendSmsRequest();
//        //必填:待发送手机号
//        request.setPhoneNumbers(phone);
//        //必填:短信签名-可在短信控制台中找到
//        request.setSignName("sweeblog");
//        //必填:短信模板-可在短信控制台中找到
//        request.setTemplateCode("SMS_172603764");
//        //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
//        request.setTemplateParam("{\"code\":\""+createRandNum()+"\"}");//默认为6位随机数
//
//        //选填-上行短信扩展码(无特殊需求用户请忽略此字段)
//        //request.setSmsUpExtendCode("90997");
//
//        //可选:outId为提供给业务方扩展字段,最终在短信回执消息中将此值带回给调用者
//        //request.setOutId("yourOutId");
//
//        //hint 此处可能会抛出异常，注意catch
//        SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);
//
//        return sendSmsResponse;
//    }


//    public static QuerySendDetailsResponse querySendDetails(String bizId) throws ClientException {
//
//        //可自助调整超时时间
//        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
//        System.setProperty("sun.net.client.defaultReadTimeout", "10000");
//
//        //初始化acsClient,暂不支持region化
//        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
//        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
//        IAcsClient acsClient = new DefaultAcsClient(profile);
//
//        //组装请求对象
//        QuerySendDetailsRequest request = new QuerySendDetailsRequest();
//        //必填-号码
//        request.setPhoneNumber("15976458285");
//        //可选-流水号
//        request.setBizId(bizId);
//        //必填-发送日期 支持30天内记录查询，格式yyyyMMdd
//        SimpleDateFormat ft = new SimpleDateFormat("yyyyMMdd");
//        request.setSendDate(ft.format(new Date()));
//        //必填-页大小
//        request.setPageSize(10L);
//        //必填-当前页码从1开始计数
//        request.setCurrentPage(1L);
//
//        //hint 此处可能会抛出异常，注意catch
//        QuerySendDetailsResponse querySendDetailsResponse = acsClient.getAcsResponse(request);
//
//        return querySendDetailsResponse;
//    }

    
    
    
    
    
    
    
	@Resource
	private UserService userService;

	/** 默认进入登录视图 */
	@RequestMapping("/index.html")
	public String index(HttpSession session, HttpServletRequest request) {
		if(session.getAttribute(Constants.USER_SESSION)!=null){
			return "home/index";
		}else{
			return "index";
		}
	}
	
	@RequestMapping("/blog.html")
	public String blog(HttpSession session, HttpServletRequest request) {
		return "blog";
	}
	
	@RequestMapping("/login.html")
	public String login(HttpSession session, HttpServletRequest request) {
		return "index";
	}
	
	@RequestMapping("/register.html")
	public String register(HttpSession session, HttpServletRequest request,HttpServletResponse response) throws Exception {
//		String name = request.getParameter("username");
//		//String pwd = request.getParameter("pwd");
//		//String pwd2 = request.getParameter("confirmpwd");
//		String code = request.getParameter("identifyingcode");
//		String phone = request.getParameter("phone");
//	    System.out.println(name+","+phone);
//	    SendSmsResponse response1 = sendSms(phone);
//		session = request.getSession();
//		session.setAttribute("yy",UserController.random);
//		request.setAttribute("username",name);
//		request.setAttribute("phone",phone);
//		request.setAttribute("username",name);
		return "register";
	}
	
	
	@RequestMapping("/register.action")
	public String register(User user,HttpSession session, HttpServletRequest request) {
		if(userService.inserUser(user)){
			session.setAttribute(Constants.SYS_MESSAGE, 200);
			return "redirect:/login.html";
		}else{
			session.setAttribute(Constants.SYS_MESSAGE, -1);
			return "redirect:/register.html";
		}
		
	}
	

	/** 登录控制器 */
	@RequestMapping("/login.action")
	public String login(@RequestParam("username") String user_name, @RequestParam("password") String user_pwd,
			HttpSession session, HttpServletRequest request) {
		User user = userService.userLogin(user_name, user_pwd);
		if(user!=null){
			//如果登陆成功,进入主页。
			session.setAttribute(Constants.USER_SESSION, user);
			return "redirect:/index.html";
			
		}else{
			//如果登入失败，返回登陆页面给出提示
			session.setAttribute(Constants.SYS_MESSAGE, -1);
			return "redirect:/login.html";
		}
	}

}
