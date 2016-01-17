package com.tgb.service;

import java.util.List;
import com.tgb.model.Book;

public interface BookService {
	void save(Book book);
	boolean update(Book book);			// 更新图书信息	
	boolean delete(int id);
	Book findByBarcode(String barcode);
	List<Book> findAll();
	List<Book> findAllAd();
	List<Book> queryBookInfo(String barcode, String bookName, int bookType, 
			String publishDate, int currentPage);
	
	void calculateTotalPageAndRecordNumber(String barcode, String bookName, 
			int bookType, String publishDate);
	
	int getTotalPage();
	int getRecordNumber();
}
