package com.tgb.mapper;

import java.util.List;
import com.tgb.model.ChuShenComments;

public interface ChuShenCommentsMapper {
	void save(ChuShenComments chuShenComments);
	boolean update(ChuShenComments chuShenComments);
	boolean delete(int id);
	
	ChuShenComments findById(int id);
	List<ChuShenComments> findAll();
}
