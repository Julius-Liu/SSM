package com.tgb.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.tgb.model.YinWu;

public interface YinWuMapper {
	void save(YinWu yinWu);
	boolean update(YinWu yinWu);			// 更新选题信息
	boolean delete(int id);
	YinWu findById(int id);

	List<YinWu> findAll();
	
	List<YinWu> calculateTotalPageAndRecordNumber(
			@Param("print_company")String print_company, 
			@Param("book_name")String book_name, 
			@Param("ze_ren_editor")String ze_ren_editor, 
			@Param("print_status")int print_status);
}
