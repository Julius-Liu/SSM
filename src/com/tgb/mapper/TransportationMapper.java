package com.tgb.mapper;

import java.util.List;
import com.tgb.model.Transportation;

public interface TransportationMapper {
	void save(Transportation transportation);
	boolean update(Transportation transportation);
	boolean delete(int id);
	
	Transportation findById(int id);
	List<Transportation> findAll();
}
