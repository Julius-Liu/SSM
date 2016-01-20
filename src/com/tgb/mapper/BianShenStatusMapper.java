package com.tgb.mapper;

import java.util.List;
import com.tgb.model.BianShenStatus;

public interface BianShenStatusMapper {
	void save(BianShenStatus bianShenStatus);
	boolean update(BianShenStatus bianShenStatus);
	boolean delete(int id);
	
	BianShenStatus findById(int id);
	List<BianShenStatus> findAll();
}
