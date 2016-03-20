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
		String errors = "有错误。";
		if(errors.length() >0){
			return "redirect:v_login";
		}
		return "redirect:v_index";
	}
}
