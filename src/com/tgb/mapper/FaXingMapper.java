package com.tgb.mapper;

import java.util.List;
import com.tgb.model.FaXing;
import org.apache.ibatis.annotations.Param;

public interface FaXingMapper {
	void save(FaXing faXing);
	boolean update(FaXing faXing);			
	boolean delete(String id);
	FaXing findById(String id);

	List<FaXing> findAll();
	
	List<FaXing> calculateTotalPageAndRecordNumber(
			@Param("fa_xing_id")String fa_xing_id, 			 
			@Param("book_name")String book_name,
			@Param("order_receipt")String order_receipt,
			@Param("contact_person")String contact_person);
}
