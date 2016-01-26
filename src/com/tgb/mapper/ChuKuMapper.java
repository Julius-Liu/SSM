package com.tgb.mapper;

import java.util.List;
import com.tgb.model.ChuKu;
import org.apache.ibatis.annotations.Param;

public interface ChuKuMapper {
	void save(ChuKu chuKu);
	boolean update(ChuKu chuKu);			// 更新选题信息
	boolean delete(String id);
	ChuKu findById(String id);

	List<ChuKu> findAll();
	
	List<ChuKu> calculateTotalPageAndRecordNumber(
			@Param("customer_name")String customer_name, 			 
			@Param("deliver_man")String deliver_man,
			@Param("book_name")String book_name,
			@Param("contact_person")String contact_person);
}
