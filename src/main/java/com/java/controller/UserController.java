package com.java.controller;

import java.beans.Encoder;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;
import com.java.entity.User;
import com.java.service.UserService;
import com.java.utils.BeanToJson;
import com.java.utils.Tools;
import com.java.viewmodel.viewmodel;

/**
 * 用户controller
 * @author lailai
 *
 */
@Controller
public class UserController {

	Logger logger=LoggerFactory.getLogger(this.getClass());
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login.html",method=RequestMethod.GET)
	public String LoginHtml(HttpServletRequest request,HttpServletResponse response) throws Exception{
		return "login";
	}
	/**
	 * 登录提交
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/login.action",method=RequestMethod.POST)
	public void LoginAction(HttpServletRequest request,HttpServletResponse response) throws Exception{
		String userinfo=request.getParameter("userinfo");
		//userinfo=URLEncoder.encode(userinfo, "utf-8");
		User user=JSON.parseObject(userinfo, User.class);
		viewmodel viewmode=new viewmodel();
		if(user!=null){
			User loginuser=userService.Login(user.getUsername(), user.getPwd());
			if(loginuser!=null){
				HttpSession session=request.getSession();
				session.setAttribute("user", loginuser);
				String token=session.getId();
				session.setAttribute("token", Tools.getMd5(token));
				viewmode.setSuccess(true);
			}else{
				viewmode.setSuccess(false);
				viewmode.setMessage("还没有注册，请先注册再登录");
				viewmode.setHref(request.getContextPath()+"/sinup.html");
			}
		}else{
			viewmode.setSuccess(false);
			viewmode.setMessage("登录出错");
		}
		response.setContentType("text/json;charset=utf-8");
		String json=BeanToJson.beanToJson(viewmode);
		response.getWriter().write(json);
	}
	
	@RequestMapping(value="/sinup.html",method=RequestMethod.GET)
	public String SinupHtml(HttpServletRequest request,HttpServletResponse response) throws Exception{
		return "sinup";
	}
	/**
	 * 注册
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/sinup.action",method=RequestMethod.POST)
	public void SinupAction(HttpServletRequest request,HttpServletResponse response) throws Exception{
		String userinfo=request.getParameter("user");
			//userinfo=URLEncoder.encode(userinfo,"utf-8");
		viewmodel view=new viewmodel();
		response.setContentType("text/json;charset=utf-8");
		try {
			User user=JSON.parseObject(userinfo, User.class);
			if(user!=null){
				int num=userService.InsertUser(user);
				if(num==1){
					view.setSuccess(true);
				}else{
					view.setSuccess(false);
					view.setMessage("注册失败");
				}
			}else{
				view.setSuccess(false);
				view.setMessage("");
			}
			String json=JSON.toJSONString(view);
			response.getWriter().write(json);
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
	}
}
