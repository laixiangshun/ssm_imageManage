package com.java.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.java.entity.User;
import com.java.utils.Tools;

/**
 * 自定义拦截器
 * @author lailai
 *
 */
public class Interceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object hander) throws Exception {
		System.out.println("进入拦截器");
		String url=request.getRequestURI();
		if(url.endsWith("/login.html") || url.endsWith("/login.action") 
				|| url.endsWith("sinup.html") || url.endsWith("/sinup.action")){
			return true;
		}
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		if(user!=null){
			String token=(String)session.getAttribute("token");
			if(token.equals(Tools.getMd5(session.getId()))){
				return true;
			}else{
				session.invalidate();
				response.sendRedirect(request.getContextPath()+"/login.html");
			}
		}else{
			response.sendRedirect(request.getContextPath()+"/login.html");
		}
		return true;
	}

}
