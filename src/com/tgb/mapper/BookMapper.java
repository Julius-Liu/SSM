package com.tgb.mapper;

import java.util.List;
import com.tgb.model.Book;

public interface BookMapper {
	void save(Book book);
	boolean update(Book book);
	boolean delete(int id);
	Book findById(int id);
	List<Book> findAll();
}
