package com.tgb.mapper;

import java.util.List;
import com.tgb.model.Book;
<<<<<<< HEAD
import com.tgb.model.BookType;
=======
>>>>>>> af17460962b1e93bb1c45c599f87e54ebfe6a2d6

public interface BookMapper {
	void save(Book book);
	boolean update(Book book);
	boolean delete(int id);
	Book findById(int id);
	List<Book> findAll();
<<<<<<< HEAD
	void CalculateTotalPageAndRecordNumber(String barcode, String bookName, 
			BookType bookType, String publishDate);
=======
>>>>>>> af17460962b1e93bb1c45c599f87e54ebfe6a2d6
}
