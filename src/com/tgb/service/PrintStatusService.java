package com.tgb.service;

import java.util.List;
import com.tgb.model.PrintStatus;

public interface PrintStatusService {
	void save(PrintStatus printStatus);
	boolean update(PrintStatus printStatus);
	boolean delete(int id);
	
	PrintStatus findById(int id);
	List<PrintStatus> findAll();	
}
