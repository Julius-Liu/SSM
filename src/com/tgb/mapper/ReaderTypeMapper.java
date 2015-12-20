package com.tgb.mapper;

import java.util.List;
import com.tgb.model.ReaderType;

public interface ReaderTypeMapper {
	void save(ReaderType readerType);
	boolean update(ReaderType readerType);
	boolean delete(int id);
	ReaderType findById(int id);
	List<ReaderType> findAll();
}
