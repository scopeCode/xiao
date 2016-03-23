package com.yrs.school.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SchoolAct {
	@RequestMapping(value = "/v_index", method = RequestMethod.GET)
	public String v_index(HttpServletRequest request, HttpServletResponse response) {
		return "/index";
	}
	
	@RequestMapping(value = "/v_login", method = RequestMethod.GET)
	public String v_login(HttpServletRequest request,HttpServletResponse response,ModelMap model) {
		model.put("errors", "有错误");
		return "/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String mobile,String pwd
				,HttpServletRequest request
				,HttpServletResponse response
				) {
		String errors = "";
		if(errors.length() >0){
			return "redirect:v_login";
		}
		return "redirect:v_index";
	}
	
	@RequestMapping(value = "/v_tpl_index", method = RequestMethod.GET)
	public String v_tpl_index(String a,HttpServletRequest request,HttpServletResponse response) {
		return "/index/index";
	}
	
	@RequestMapping(value = "/v_tpl_header", method = RequestMethod.GET)
	public String v_tpl_header(String a,HttpServletRequest request,HttpServletResponse response) {
		return "/common/header";
	}
	
	@RequestMapping(value = "/v_tpl_footer", method = RequestMethod.GET)
	public String v_tpl_footer(String a,HttpServletRequest request,HttpServletResponse response) {
		return "/common/footer";
	}
	
	@RequestMapping(value = "/v_tpl_sidebar", method = RequestMethod.GET)
	public String v_tpl_sidebar(String a,HttpServletRequest request,HttpServletResponse response) {
		return "/common/sidebar";
	}
}
