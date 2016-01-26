package com.tgb.service;

import java.util.List;
import com.tgb.model.RuKu;

public interface RuKuService {
	void save(RuKu ruKu);
	boolean update(RuKu ruKu);		
	boolean delete(int id);
	RuKu findById(int id);
	List<RuKu> findAll();
	
	List<RuKu> queryRuKuInfo(String order_id, String deliver_company, String book_name,  
			String receive_man, int currentPage);
	
	void calculateTotalPageAndRecordNumber(String order_id, String deliver_company, String book_name,  
			String receive_man);
	
	int getTotalPage();	
	int getRecordNumber();
}
