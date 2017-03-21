package br.com.root.loja.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.com.root.loja.model.User;
import br.com.root.loja.utils.Utils;

public class UsuarioRecuperaValid implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
        return User.class.isAssignableFrom(clazz);
    }

	@Override
	public void validate(Object target, Errors errors) {
		User pusuario = (User)target;

		ValidationUtils.rejectIfEmpty(errors,"cpf","campo.requirido");
		
		if(pusuario.getCpf() != null && !pusuario.getCpf().isEmpty() && !Utils.isCPFValido(pusuario.getCpf())){
			errors.rejectValue("cpf", "campo.invalido");
		}
    }
}