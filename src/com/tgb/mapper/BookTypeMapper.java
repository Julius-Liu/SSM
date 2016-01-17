package com.tgb.mapper;

import java.util.List;
import com.tgb.model.BookType;

public interface BookTypeMapper {
	void save(BookType bookType);
	boolean update(BookType bookType);
	boolean delete(int id);
	
	BookType findById(int id);
	List<BookType> findAll();
}
