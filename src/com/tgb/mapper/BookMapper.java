package com.tgb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.tgb.model.Book;
import com.tgb.model.BookType;

public interface BookMapper {
	void save(Book book);
	boolean update(Book book);			// 更新图书信息
	boolean delete(int id);
	Book findById(int id);
	List<Book> findAll();
	List<Book> findAllAd();
	List<Book> calculateTotalPageAndRecordNumber(
			@Param("barcode")String barcode, 
			@Param("bookName")String bookName, 
			@Param("bookType")int bookType, 
			@Param("publishDate")String publishDate);
}
