package com.tgb.service;

import java.util.List;
import com.tgb.model.YinWu;

public interface YinWuService {
	void save(YinWu yinWu);
	boolean update(YinWu yinWu);			// 更新印务信息	
	boolean delete(int id);
	YinWu findById(int id);
	List<YinWu> findAll();
	
	List<YinWu> queryYinWuInfo(String print_company, String book_name, String ze_ren_editor,
			int print_status, int currentPage);
	
	void calculateTotalPageAndRecordNumber(String print_company, String book_name, String ze_ren_editor,
			int print_status);
	
	int getTotalPage();	
	int getRecordNumber();
}
