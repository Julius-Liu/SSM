package com.tgb.service;

import java.util.List;
import com.tgb.model.GaoJianSource;

public interface GaoJianSourceService {
	void save(GaoJianSource gaoJianSource);
	boolean update(GaoJianSource gaoJianSource);
	boolean delete(int id);
	
	GaoJianSource findById(int id);
	List<GaoJianSource> findAll();
}
