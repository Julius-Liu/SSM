package com.tgb.mapper;

import java.util.List;
import com.tgb.model.Reader;

public interface ReaderMapper {
	void save(Reader reader);
	boolean update(Reader reader);
	boolean delete(int id);
	Reader findById(int id);
	List<Reader> findAll();
}
