package com.clay.interceptor;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.clay.entity.User;
import com.clay.tools.Constants;

public class SysInterceptor extends HandlerInterceptorAdapter {

	private Logger logger = Logger.getLogger(SysInterceptor.class);

	/*@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute(Constants.USER_SESSION);
		if (null == user) {
			response.sendRedirect(request.getContextPath() + "/401.jsp");
			return false;
		}
		return true;
	}*/
}
