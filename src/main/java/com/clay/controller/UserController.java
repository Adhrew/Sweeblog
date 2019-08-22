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

	//��Ʒ����:��ͨ�Ŷ���API��Ʒ,�����������滻
    //static final String product = "Dysmsapi";
    //��Ʒ����,�����������滻
    //static final String domain = "dysmsapi.aliyuncs.com";

    // TODO �˴���Ҫ�滻�ɿ������Լ���AK(�ڰ����Ʒ��ʿ���̨Ѱ��)
//    static final String accessKeyId = "LTAIR96drgLD5lHz";
//    static final String accessKeySecret = "e0PY5NzJQY5eu8klmiEjtKBhZbxhKO";
//    static String phone;
//    static String random;
    
    /**
     * @����һ��6λ�������  
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
//        //������������ʱʱ��
//        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
//        System.setProperty("sun.net.client.defaultReadTimeout", "10000");
//
//        //��ʼ��acsClient,�ݲ�֧��region��
//        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
//        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
//        IAcsClient acsClient = new DefaultAcsClient(profile);
//
//        //��װ�������-��������������̨-�ĵ���������
//        SendSmsRequest request = new SendSmsRequest();
//        //����:�������ֻ���
//        request.setPhoneNumbers(phone);
//        //����:����ǩ��-���ڶ��ſ���̨���ҵ�
//        request.setSignName("sweeblog");
//        //����:����ģ��-���ڶ��ſ���̨���ҵ�
//        request.setTemplateCode("SMS_172603764");
//        //��ѡ:ģ���еı����滻JSON��,��ģ������Ϊ"�װ���${name},������֤��Ϊ${code}"ʱ,�˴���ֵΪ
//        request.setTemplateParam("{\"code\":\""+createRandNum()+"\"}");//Ĭ��Ϊ6λ�����
//
//        //ѡ��-���ж�����չ��(�����������û�����Դ��ֶ�)
//        //request.setSmsUpExtendCode("90997");
//
//        //��ѡ:outIdΪ�ṩ��ҵ����չ�ֶ�,�����ڶ��Ż�ִ��Ϣ�н���ֵ���ظ�������
//        //request.setOutId("yourOutId");
//
//        //hint �˴����ܻ��׳��쳣��ע��catch
//        SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);
//
//        return sendSmsResponse;
//    }


//    public static QuerySendDetailsResponse querySendDetails(String bizId) throws ClientException {
//
//        //������������ʱʱ��
//        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
//        System.setProperty("sun.net.client.defaultReadTimeout", "10000");
//
//        //��ʼ��acsClient,�ݲ�֧��region��
//        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
//        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
//        IAcsClient acsClient = new DefaultAcsClient(profile);
//
//        //��װ�������
//        QuerySendDetailsRequest request = new QuerySendDetailsRequest();
//        //����-����
//        request.setPhoneNumber("15976458285");
//        //��ѡ-��ˮ��
//        request.setBizId(bizId);
//        //����-�������� ֧��30���ڼ�¼��ѯ����ʽyyyyMMdd
//        SimpleDateFormat ft = new SimpleDateFormat("yyyyMMdd");
//        request.setSendDate(ft.format(new Date()));
//        //����-ҳ��С
//        request.setPageSize(10L);
//        //����-��ǰҳ���1��ʼ����
//        request.setCurrentPage(1L);
//
//        //hint �˴����ܻ��׳��쳣��ע��catch
//        QuerySendDetailsResponse querySendDetailsResponse = acsClient.getAcsResponse(request);
//
//        return querySendDetailsResponse;
//    }

    
    
    
    
    
    
    
	@Resource
	private UserService userService;

	/** Ĭ�Ͻ����¼��ͼ */
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
	

	/** ��¼������ */
	@RequestMapping("/login.action")
	public String login(@RequestParam("username") String user_name, @RequestParam("password") String user_pwd,
			HttpSession session, HttpServletRequest request) {
		User user = userService.userLogin(user_name, user_pwd);
		if(user!=null){
			//�����½�ɹ�,������ҳ��
			session.setAttribute(Constants.USER_SESSION, user);
			return "redirect:/index.html";
			
		}else{
			//�������ʧ�ܣ����ص�½ҳ�������ʾ
			session.setAttribute(Constants.SYS_MESSAGE, -1);
			return "redirect:/login.html";
		}
	}

}
