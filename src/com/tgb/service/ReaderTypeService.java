package com.tgb.service;

import java.util.List;
import com.tgb.model.ReaderType;

public interface ReaderTypeService {
	void save(ReaderType readerType);
	boolean update(ReaderType readerType);
	boolean delete(int id);
	ReaderType findById(int id);
	List<ReaderType> findAll();
}
