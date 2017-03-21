package br.com.root.loja.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HTTPErrorHandlerController {
	
	@RequestMapping("/404")
	 public String error404(){
	  return "/404";
	}
}
