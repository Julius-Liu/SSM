package com.tgb.service;

import java.util.List;
import com.tgb.model.ChuKu;

public interface ChuKuService {
	void save(ChuKu chuKu);
	boolean update(ChuKu chuKu);			
	boolean delete(String id);
	ChuKu findById(String id);
	List<ChuKu> findAll();
	
	List<ChuKu> queryChuKuInfo(String customer_name, String deliver_man, String book_name,
			String contact_person, int currentPage);
	
	void calculateTotalPageAndRecordNumber(String customer_name, String deliver_man, String book_name,
			String contact_person);
	
	int getTotalPage();	
	int getRecordNumber();
}
