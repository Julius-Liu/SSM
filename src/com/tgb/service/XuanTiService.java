package com.tgb.service;

import java.util.List;
import com.tgb.model.XuanTi;

public interface XuanTiService {
	void save(XuanTi xuanTi);
	boolean update(XuanTi xuanTi);			// 更新选题信息	
	boolean delete(String id);
	XuanTi findById(String id);
	List<XuanTi> findAll();
	
	List<XuanTi> queryXuanTiInfo(String xuan_ti_id, int type, String year, 
			String book_name, int currentPage);
	
	void calculateTotalPageAndRecordNumber(String xuan_ti_id, int type, String year, 
			String book_name);
	
	int getTotalPage();	
	int getRecordNumber();
}
