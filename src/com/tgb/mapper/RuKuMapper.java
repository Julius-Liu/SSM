package com.tgb.mapper;

import java.util.List;
import com.tgb.model.RuKu;
import org.apache.ibatis.annotations.Param;

public interface RuKuMapper {
	void save(RuKu ruKu);
	boolean update(RuKu ruKu);			
	boolean delete(int id);
	RuKu findById(int id);

	List<RuKu> findAll();
	
	List<RuKu> calculateTotalPageAndRecordNumber(
			@Param("order_id")String order_id, 			 
			@Param("deliver_company")String deliver_company,
			@Param("book_name")String book_name,
			@Param("receive_man")String receive_man);
}
