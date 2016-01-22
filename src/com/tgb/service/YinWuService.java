package com.tgb.service;

import java.util.List;
import com.tgb.model.YinWu;

public interface YinWuService {
	void save(YinWu yinWu);
	boolean update(YinWu yinWu);			// 更新编审信息	
	boolean delete(String id);
	YinWu findById(String id);
	List<YinWu> findAll();
	
	List<YinWu> queryYinWuInfo(String yin_wu_id, String book_name, int yin_zhang,
			int print_status, int currentPage);
	
	void calculateTotalPageAndRecordNumber(String yin_wu_id, String book_name, int yin_zhang,
			int print_status);
	
	int getTotalPage();	
	int getRecordNumber();
}
