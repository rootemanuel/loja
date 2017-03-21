package br.com.root.loja.exception;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalExceptionHandler {

	/*@ExceptionHandler(Exception.class)
	public ModelAndView myError(Exception exception) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("exception", exception);
		mav.setViewName("globalerror");
		return mav;
	}*/
	
    @ExceptionHandler(NoHandlerFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public ModelAndView handleNoHandlerFound(HttpServletRequest request) throws IOException {        
        return new ModelAndView("404");
    }
}
