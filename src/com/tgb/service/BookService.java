package com.tgb.service;

import java.util.List;
import com.tgb.model.Book;
import com.tgb.model.BookType;

public interface BookService {
	void save(Book book);
	boolean update(Book book);
	boolean delete(int id);
	Book findById(int id);
	List<Book> findAll();
}
