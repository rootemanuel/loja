package br.com.root.loja.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UsuarioController {
	
	final static Logger log = Logger.getLogger(UsuarioController.class);
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(ModelMap model){
		return "/login";
	}
	
	@RequestMapping(value="/recepcao", method=RequestMethod.GET)
	public String recepcao(ModelMap model){
		return "/recepcao";
	}
}
