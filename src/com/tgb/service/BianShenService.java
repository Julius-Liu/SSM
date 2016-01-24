package com.tgb.service;

import java.util.List;
import com.tgb.model.BianShen;

public interface BianShenService {
	void save(BianShen bianShen);
	boolean update(BianShen bianShen);			// 更新编审信息	
	boolean delete(int id);
	BianShen findById(int id);
	List<BianShen> findAll();
	
	List<BianShen> queryBianShenInfo(String book_name, String original_author, String ze_ren_editor,  
			int bian_shen_status, int currentPage);
	
	void calculateTotalPageAndRecordNumber(String book_name, String original_author, String ze_ren_editor, 
			int bian_shen_status);
	
	int getTotalPage();	
	int getRecordNumber();
}
