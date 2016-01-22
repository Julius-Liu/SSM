package com.tgb.service;

import java.util.List;
import com.tgb.model.PrintQuality;

public interface PrintQualityService {
	void save(PrintQuality printQuality);
	boolean update(PrintQuality printQuality);
	boolean delete(int id);
	
	PrintQuality findById(int id);
	List<PrintQuality> findAll();	
}
