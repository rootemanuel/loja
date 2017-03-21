package br.com.root.loja.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.com.root.loja.model.User;
import br.com.root.loja.utils.Utils;

public class UsuarioCadastroValid implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		User pusuario = (User)target;

		ValidationUtils.rejectIfEmpty(errors,"cpf","campo.requirido");
		ValidationUtils.rejectIfEmpty(errors,"nome","campo.requirido");
		ValidationUtils.rejectIfEmpty(errors,"sexo","campo.requirido");
		ValidationUtils.rejectIfEmpty(errors,"dtnasc","campo.requirido");
		ValidationUtils.rejectIfEmpty(errors,"telefone","campo.requirido");
		ValidationUtils.rejectIfEmpty(errors,"endereco","campo.requirido");
		ValidationUtils.rejectIfEmpty(errors,"estado","campo.requirido");
		ValidationUtils.rejectIfEmpty(errors,"cidade","campo.requirido");
		ValidationUtils.rejectIfEmpty(errors,"bairro","campo.requirido");
		ValidationUtils.rejectIfEmpty(errors,"cep","campo.requirido");
		ValidationUtils.rejectIfEmpty(errors,"email","campo.requirido");
		ValidationUtils.rejectIfEmpty(errors,"senha","campo.requirido");

		
		if(pusuario.getEmail() != null && !pusuario.getEmail().isEmpty() && !pusuario.getEmail().contains("@")){
			errors.rejectValue("email", "campo.invalido");
		}
		
		if(pusuario.getCpf() != null && !pusuario.getCpf().isEmpty() && !Utils.isCPFValido(pusuario.getCpf())){
			errors.rejectValue("cpf", "campo.invalido");
		}
    }
}
