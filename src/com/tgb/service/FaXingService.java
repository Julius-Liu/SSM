package com.tgb.service;

import java.util.List;
import com.tgb.model.FaXing;

public interface FaXingService {
	void save(FaXing faXing);
	boolean update(FaXing faXing);			
	boolean delete(String id);
	FaXing findById(String id);
	List<FaXing> findAll();
	
	List<FaXing> queryFaXingInfo(String fa_xing_id, String book_name, String order_receipt,
			String contact_person, int currentPage);
	
	void calculateTotalPageAndRecordNumber(String fa_xing_id, String book_name, String order_receipt,
			String contact_person);
	
	int getTotalPage();	
	int getRecordNumber();
}
