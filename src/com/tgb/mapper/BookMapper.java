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
	List<Book> findAllAd();
	List<Book> calculateTotalPageAndRecordNumber(String barcode, String bookName, 
			int bookType, String publishDate);
}
