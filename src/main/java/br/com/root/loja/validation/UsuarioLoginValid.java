package br.com.root.loja.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.com.root.loja.model.User;

public class UsuarioLoginValid implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
        return User.class.isAssignableFrom(clazz);
    }

	@Override
	public void validate(Object target, Errors errors) {
		User pusuario = (User)target;

		ValidationUtils.rejectIfEmpty(errors,"email","campo.requirido");
		ValidationUtils.rejectIfEmpty(errors,"senha","campo.requirido");
		
		if(pusuario.getEmail() != null && !pusuario.getEmail().isEmpty() && !pusuario.getEmail().contains("@")){
			errors.rejectValue("email", "campo.invalido");
		}
    }
}
