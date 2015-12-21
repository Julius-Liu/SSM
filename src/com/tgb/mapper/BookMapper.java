package com.tgb.mapper;

import java.util.List;
import com.tgb.model.Book;
import com.tgb.model.BookType;

public interface BookMapper {
	void save(Book book);
	boolean update(Book book);
	boolean delete(int id);
	Book findById(int id);
	List<Book> findAll();
	void CalculateTotalPageAndRecordNumber(String barcode, String bookName, 
			BookType bookType, String publishDate);
}
