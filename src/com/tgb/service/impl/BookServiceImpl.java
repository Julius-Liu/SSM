package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tgb.mapper.BookMapper;
import com.tgb.model.Book;
import com.tgb.model.BookType;
import com.tgb.service.BookService;

@Service
@Transactional  //此处不再进行创建SqlSession和提交事务，都已交由spring去管理了。
public class BookServiceImpl implements BookService{
	@Resource
	private BookMapper bookMapper;

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
	
	public List<Book> findAllBookWithBookTypeName() {
		List<Book> bookListAd = bookMapper.findAllBookWithBookTypeName();
		return bookListAd;
	}
	
	public void CalculateTotalPageAndRecordNumber(String barcode, String bookName, 
			BookType bookType, String publishDate) {
        String hql = "From Book book where 1=1";
        if(!barcode.equals("")) hql = hql + " and book.barcode like '%" + barcode + "%'";
        if(!bookName.equals("")) hql = hql + " and book.bookName like '%" + bookName + "%'";
        if(null != bookType && bookType.getBookTypeId()!=0) hql += " and book.bookType.bookTypeId=" + bookType.getBookTypeId();
        if(!publishDate.equals("")) hql = hql + " and book.publishDate like '%" + publishDate + "%'";
//        Query q = s.createQuery(hql);
//        List bookList = q.list();
//        recordNumber = bookList.size();
//        int mod = recordNumber % this.PAGE_SIZE;
//        totalPage = recordNumber / this.PAGE_SIZE;
//        if(mod != 0) totalPage++;
	}
}
