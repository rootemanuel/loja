package br.com.root.loja.exception;

public class NegocioException extends Exception {

	private static final long serialVersionUID = 5125469090715122453L;

	public NegocioException(String msg){
		super(msg);
	}
	
	public NegocioException(String msg, Throwable cause){
		super(msg, cause);
	}
}
