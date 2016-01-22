package com.tgb.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.tgb.model.YinWu;

public interface YinWuMapper {
	void save(YinWu yinWu);
	boolean update(YinWu yinWu);			// 更新选题信息
	boolean delete(String id);
	YinWu findById(String id);

	List<YinWu> findAll();
	
	List<YinWu> calculateTotalPageAndRecordNumber(
			@Param("yin_wu_id")String yin_wu_id, 
			@Param("book_name")String book_name, 
			@Param("yin_zhang")int yin_zhang, 
			@Param("print_status")int print_status);
}
