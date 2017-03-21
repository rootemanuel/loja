package br.com.root.loja.dao;

import br.com.root.loja.model.User;

public interface UserDao {
	User findByCpf(String email);
	User findByEmail(String email);
	void resetPassword(User usr);
	boolean findByEmailCpf(User usr);
	void addUser(User usr);
}

