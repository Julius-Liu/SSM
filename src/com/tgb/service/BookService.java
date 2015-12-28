package com.tgb.service;

import java.util.List;
import com.tgb.model.Book;

public interface BookService {
	void save(Book book);
	boolean update(Book book);
	boolean delete(int id);
	Book findById(int id);
	List<Book> findAll();
	List<Book> findAllAd();
	void calculateTotalPageAndRecordNumber(String barcode, String bookName, 
			int bookType, String publishDate);
}