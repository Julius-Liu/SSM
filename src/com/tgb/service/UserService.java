package com.tgb.service;

import java.util.List;
import com.tgb.model.User;

public interface UserService {
	void save(User user);
	boolean update(User user);
	boolean delete(int id);
	User findById(int id);
	List<User> findAll();
<<<<<<< HEAD
	public boolean validate(String name, String password);
=======
>>>>>>> af17460962b1e93bb1c45c599f87e54ebfe6a2d6
}
