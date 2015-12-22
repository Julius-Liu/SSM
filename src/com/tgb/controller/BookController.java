package com.tgb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tgb.model.Book;
import com.tgb.model.BookType;
import com.tgb.service.BookService;
import com.tgb.service.BookTypeService;

@Controller
@RequestMapping("/book")
public class BookController {
	
	@Autowired
	private BookService bookService;

	@Autowired
	private BookTypeService bookTypeService;
	
	private int currentPage;
    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
    public int getCurrentPage() {
        return currentPage;
    }
    
    private int totalPage;
    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }
    public int getTotalPage() {
        return totalPage;
    }
    
    private int recordNumber;
    public void setRecordNumber(int recordNumber) {
        this.recordNumber = recordNumber;
    }
    public int getRecordNumber() {
        return recordNumber;
    }
	
	/**
	 * 跳转到添加用户界面
	 * @param request
	 * @return
	 */
	@RequestMapping("/toAddBook")
	public String toAddBook(HttpServletRequest request) {	
		List<BookType> bookTypeList = bookTypeService.findAll();
		request.setAttribute("bookTypeList", bookTypeList);
		return "/Book/Book_add";
	}
	
	/**
	 * 添加图书并重定向
	 * @param user
	 * @param request
	 * @return
	 */
	@RequestMapping("/addBook")
	public String addBook(Book book, HttpServletRequest request) {
		System.out.println("添加图书");
		bookService.save(book);
		return "redirect:/Book/getAllBook";
	}
	
	/**
	 * 获取所有图书列表
	 * @param request
	 * @return
	 */
	@RequestMapping("/getAllBook")
	public String getAllUser(HttpServletRequest request) {		
		List<Book> bookList = bookService.findAllBookWithBookTypeName();
		List<BookType> bookTypeList = bookTypeService.findAll();
		
		request.setAttribute("bookList", bookList);
		request.setAttribute("bookTypeList", bookTypeList);
		request.setAttribute("currentPage", currentPage);
		return "/Book/Book_all";
	}
	
}
