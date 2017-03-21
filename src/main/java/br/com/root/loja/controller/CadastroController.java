package br.com.root.loja.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.root.loja.dao.UserDao;
import br.com.root.loja.exception.NegocioException;
import br.com.root.loja.model.User;
import br.com.root.loja.service.UserService;
import br.com.root.loja.utils.Utils.Msgs;
import br.com.root.loja.validation.UsuarioCadastroValid;

@Controller
public class CadastroController {
	
	final static Logger log = Logger.getLogger(CadastroController.class);
	
	@Autowired
	UserService userService;
	
	@Autowired
	UserDao model;
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		 binder.addValidators(new UsuarioCadastroValid());
	}
	
	@RequestMapping(value="/cadastro", method=RequestMethod.GET)
	public String index(Model model){
		  model.addAttribute(new User());
		return "/cadastro";
	}
	
	@RequestMapping(value="/cadastro", method=RequestMethod.POST)
	public ModelAndView cadastro(@Valid User usuario, BindingResult result, RedirectAttributes redirect){
		
		try {
		
			if(result.hasErrors())
			return new ModelAndView("/cadastro");
	
			if(!model.findByEmailCpf(usuario))
				throw new NegocioException(Msgs.USUARIO_CADASTRADO.getMsg());
			
			userService.addUser(usuario);
			redirect.addFlashAttribute("cadastro","S");
			
		} catch (NegocioException ne) {
			result.addError(new ObjectError("errorne",ne.getMessage()));
			return new ModelAndView("/cadastro");
		} catch (Exception e) {
			result.addError(new ObjectError("error",Msgs.ERRO_APLICACAO.getMsg()));
			log.error(String.format("R00T-ERR0R - MESSAGE: %s", e.getMessage()));
			return new ModelAndView("/cadastro");
		}
		return new ModelAndView("redirect:/recepcao");
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null){    
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/login?logout";
	}

}
