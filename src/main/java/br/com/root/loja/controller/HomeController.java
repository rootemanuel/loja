package br.com.root.loja.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String index(Model model){
		return "/home";
	}
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String indexOf(Model model){
		return "/home";
	}

}
