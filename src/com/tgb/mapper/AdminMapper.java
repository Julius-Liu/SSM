package com.tgb.mapper;

import java.util.List;
import com.tgb.model.Admin;

public interface AdminMapper {
	void save(Admin admin);
	boolean update(Admin admin);
	boolean delete(int id);
	Admin findById(int id);
	List<Admin> findAll();
}
