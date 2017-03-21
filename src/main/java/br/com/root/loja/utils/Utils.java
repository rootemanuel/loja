package br.com.root.loja.utils;

import java.sql.Date;
import java.util.InputMismatchException;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class Utils {
	
public enum Msgs {
		
		SENHA_DIFERENTE("A confirmação da senha não confere"),
		USUARIO_CADASTRADO_SUCESSO("Usuário cadastrado com sucesso, faça seu login"),
	    USUARIO_SENHA_INVALIDO("Usuário ou senha inválido"),
	    USUARIO_CADASTRADO("Você já possui cadastro, recupere sua senha"),
	    CPF_NAO_ENCONTRADO("O CPF informado não foi encontrado"),
		ERRO_APLICACAO("Erro de aplicação, estamos trabalhando para resolver isso");

	    private final String msg;
	    
	    public String getMsg() {
			return msg;
		}

		private Msgs(String msg) {
	        this.msg = msg;
	    }
	}

	public static String removeCaracteres(String dado){
		return dado.replace(" ", "")
					.replace("-", "")
					.replace(")", "")
					.replace("(", "")
					.replace(".", "")
					.replace("_", "");
	}
	
	public static Date convertDateUtoDateS(java.util.Date dado){
		Date dt = null;

		if(dado != null){
			dt = new Date(dado.getTime());
		}
		
		return dt;
	}
	
	public static boolean isCPFValido(String CPF) {

		if (CPF.equals("00000000000") || CPF.equals("11111111111") ||
				CPF.equals("22222222222") || CPF.equals("33333333333") ||
				CPF.equals("44444444444") || CPF.equals("55555555555") ||
				CPF.equals("66666666666") || CPF.equals("77777777777") ||
				CPF.equals("88888888888") || CPF.equals("99999999999") ||
				(CPF.length() != 11))
			return(false);

		char dig10, dig11;
		int sm, i, r, num, peso;

		try {

			sm = 0;
			peso = 10;
			for (i=0; i<9; i++) {                
				num = (int)(CPF.charAt(i) - 48); 
				sm = sm + (num * peso);
				peso = peso - 1;
			}

			r = 11 - (sm % 11);
			if ((r == 10) || (r == 11))
				dig10 = '0';
			else dig10 = (char)(r + 48);

			sm = 0;
			peso = 11;
			for(i=0; i<10; i++) {
				num = (int)(CPF.charAt(i) - 48);
				sm = sm + (num * peso);
				peso = peso - 1;
			}

			r = 11 - (sm % 11);
			if ((r == 10) || (r == 11))
				dig11 = '0';
			else dig11 = (char)(r + 48);

			if ((dig10 == CPF.charAt(9)) && (dig11 == CPF.charAt(10)))
				return(true);
			else return(false);
		} catch (InputMismatchException erro) {
			return(false);
		}
	}
	
	public static String encriptSenha(String senha){
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		return passwordEncoder.encode(senha);
	}
}
