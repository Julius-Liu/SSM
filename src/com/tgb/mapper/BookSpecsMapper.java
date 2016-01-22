package com.tgb.mapper;

import java.util.List;
import com.tgb.model.BookSpecs;

public interface BookSpecsMapper {
	void save(BookSpecs bookSpecs);
	boolean update(BookSpecs bookSpecs);
	boolean delete(int id);
	
	BookSpecs findById(int id);
	List<BookSpecs> findAll();
}
