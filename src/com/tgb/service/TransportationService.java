package com.tgb.service;

import java.util.List;
import com.tgb.model.Transportation;

public interface TransportationService {
	void save(Transportation transportation);
	boolean update(Transportation transportation);
	boolean delete(int id);
	
	Transportation findById(int id);
	List<Transportation> findAll();
}
