package com.tgb.service;

import java.util.List;
import com.tgb.model.XuanTi;

public interface XuanTiService {
	void save(XuanTi xuanTi);
	boolean update(XuanTi xuanTi);			// 更新选题信息	
	boolean delete(String id);
	XuanTi findById(String id);
	List<XuanTi> findAll();
	
	List<XuanTi> queryXuanTiInfo(String xuan_ti_id, String year, int source,
			int status, int currentPage);
	
	void calculateTotalPageAndRecordNumber(String xuan_ti_id, String year, int source,
			int status);
	
	int getTotalPage();	
	int getRecordNumber();
}
