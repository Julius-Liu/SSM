package com.tgb.service;

import java.util.List;
import com.tgb.model.BianShen;

public interface BianShenService {
	void save(BianShen bianShen);
	boolean update(BianShen bianShen);			// 更新编审信息	
	boolean delete(String id);
	BianShen findById(String id);
	List<BianShen> findAll();
	
	List<BianShen> queryBianShenInfo(String id, String book_id, String book_name, 
			int bian_shen_status, int currentPage);
	
	void calculateTotalPageAndRecordNumber(String id, String book_id, String book_name, 
			int bian_shen_status);
	
	int getTotalPage();	
	int getRecordNumber();
}
