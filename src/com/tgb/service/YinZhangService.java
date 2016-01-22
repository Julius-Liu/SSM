package com.tgb.service;

import java.util.List;
import com.tgb.model.YinZhang;

public interface YinZhangService {
	void save(YinZhang yinZhang);
	boolean update(YinZhang yinZhang);
	boolean delete(int id);
	
	YinZhang findById(int id);
	List<YinZhang> findAll();
}
