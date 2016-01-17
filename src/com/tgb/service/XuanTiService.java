package com.tgb.service;

import java.util.List;
import com.tgb.model.XuanTi;

public interface XuanTiService {
	void save(XuanTi xuan_ti);
	boolean update(XuanTi xuan_ti);			// 更新选题信息	
	boolean delete(String id);
	XuanTi findById(String id);
	List<XuanTi> findAll();
	
	List<XuanTi> queryXuanTiInfo(String id, int type, String year, 
			String book_name, int currentPage);
	
	void calculateTotalPageAndRecordNumber(String id, int type, String year, 
			String book_name);
	
	int getTotalPage();	
	int getRecordNumber();
}
