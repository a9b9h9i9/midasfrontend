package com.niit.config;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	//@RequestMapping("/")
	@RequestMapping(method= RequestMethod.GET)
public String Model(ModelMap model)
	{
		model.addAttribute("message", "My first Spring MVC project");
		return "index";
		
	}
}
