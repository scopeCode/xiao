package com.yrs.school.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SchoolAct {
	@RequestMapping(value = "/v_index", method = RequestMethod.GET)
	public String v_index(HttpServletRequest request, HttpServletResponse response) {
		return "/index";
	}
	
	@RequestMapping(value = "/v_login", method = RequestMethod.GET)
	public String v_login(HttpServletRequest request, HttpServletResponse response) {
		return "/login";
	}
	
}
