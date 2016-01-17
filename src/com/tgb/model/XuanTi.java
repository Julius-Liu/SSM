package com.tgb.model;

public class XuanTi {
	// 选题编号
	private String id;
	
	// 选题类型
	private int type;
	
	// 选题年度
	private String year;
	
	// 选题季度
	private int season;
	
	// 书名
	private String book_name;
	
	// 丛书名
	private String sub_book_name;
	
	// 部门
	private String department;
	
	// 申报人
	private String originator;
	
	// 稿件来源
	private int source;
	
	// 初审意见
	private int first_comments;
	
	// 选题状态
	private int status;
	
	// ISBN
	private String ISBN;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public int getSeason() {
		return season;
	}
	public void setSeason(int season) {
		this.season = season;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getSub_book_name() {
		return sub_book_name;
	}
	public void setSub_book_name(String sub_book_name) {
		this.sub_book_name = sub_book_name;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getOriginator() {
		return originator;
	}
	public void setOriginator(String originator) {
		this.originator = originator;
	}
	public int getSource() {
		return source;
	}
	public void setSource(int source) {
		this.source = source;
	}
	public int getFirst_comments() {
		return first_comments;
	}
	public void setFirst_comments(int first_comments) {
		this.first_comments = first_comments;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
}
