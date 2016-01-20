package com.tgb.service;

import java.util.List;
import com.tgb.model.BianShenStatus;

public interface BianShenStatusService {
	void save(BianShenStatus bianShenStatus);
	boolean update(BianShenStatus bianShenStatus);
	boolean delete(int id);
	
	BianShenStatus findById(int id);
	List<BianShenStatus> findAll();
}
