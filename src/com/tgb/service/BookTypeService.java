package com.tgb.service;

import java.util.List;
import com.tgb.model.BookType;

public interface BookTypeService {
	void save(BookType bookType);
	boolean update(BookType bookType);
	boolean delete(int id);
	
	BookType findById(int id);
	List<BookType> findAll();
}
