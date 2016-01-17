package com.tgb.mapper;

import java.util.List;
import com.tgb.model.GaoJianSource;

public interface GaoJianSourceMapper {
	void save(GaoJianSource gaoJianSource);
	boolean update(GaoJianSource gaoJianSource);
	boolean delete(int id);
	
	GaoJianSource findById(int id);
	List<GaoJianSource> findAll();
}
