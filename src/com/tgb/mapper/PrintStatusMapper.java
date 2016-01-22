package com.tgb.mapper;

import java.util.List;
import com.tgb.model.PrintStatus;

public interface PrintStatusMapper {
	void save(PrintStatus printStatus);
	boolean update(PrintStatus printStatus);
	boolean delete(int id);
	
	PrintStatus findById(int id);
	List<PrintStatus> findAll();
}
