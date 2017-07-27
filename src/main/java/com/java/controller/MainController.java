package com.java.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 个人相册主要的controller
 * @author lailai
 *
 */
@Controller
public class MainController {

	@RequestMapping(value="/index.html",method=RequestMethod.GET)
	public String index(HttpServletRequest request,HttpServletResponse response) throws Exception{
		return "index";
	}
}
