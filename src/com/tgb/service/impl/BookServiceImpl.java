package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.tgb.mapper.BookMapper;
import com.tgb.model.Book;
import com.tgb.model.BookType;
import com.tgb.service.BookService;

@Service
@Transactional  //此处不再进行创建SqlSession和提交事务，都已交由spring去管理了。
public class BookServiceImpl implements BookService{
	@Resource
	private BookMapper bookMapper;

	private int PAGE_SIZE = 10;
	
	public void save(Book book) {
		bookMapper.save(book);		
	}

	public boolean update(Book user) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public Book findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Book> findAll() {
		List<Book> findAllList = bookMapper.findAll();
		return findAllList;
	}
	
	public List<Book> findAllAd() {
		PageHelper.startPage(1, 10);
		List<Book> bookListAd = bookMapper.findAllAd();
		return bookListAd;
	}
	
	public void calculateTotalPageAndRecordNumber(String barcode, String bookName, 
			int bookType, String publishDate) {
        List<Book> bookList = bookMapper.calculateTotalPageAndRecordNumber(barcode, bookName, bookType, publishDate);
        int recordNumber = bookList.size();
        int mod = recordNumber % this.PAGE_SIZE;
        int totalPage = recordNumber / this.PAGE_SIZE;
        if(mod != 0) {
        	totalPage++;
        }
        
//        Query q = s.createQuery(hql);
//        List bookList = q.list();
//        recordNumber = bookList.size();
//        int mod = recordNumber % this.PAGE_SIZE;
//        totalPage = recordNumber / this.PAGE_SIZE;
//        if(mod != 0) totalPage++;
	}
}
