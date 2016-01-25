package com.tgb.model;

/*
 * 印务
 */
public class YinWu {
	// 印务编号
	private int id;
	
	// 起始日期
	private String start_date;
	
	// 终止日期
	private String end_date;
	
	// 出版单位
	private String publish_company;
	
	// 印刷单位
	private String print_company;
	
	// 图书名称
	private String book_name;
	
	// 图书规格
	private int book_specs;
	
	
	private String book_specs_content;
	
	// 印章
	private String yin_zhang;
	
	// 版次
	private int revision;
	
	// 印刷数
	private int print_quantity;
	
	// ISBN
	private String ISBN;
	
	// 责任编辑
	private String ze_ren_editor;
	
	// 责任部门
	private String ze_ren_department;
	
	// 印刷状态
	private int print_status;
	private String print_status_content;
	
	// 印刷质量
	private int print_quality;
	private String print_quality_content;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public String getPublish_company() {
		return publish_company;
	}
	public void setPublish_company(String publish_company) {
		this.publish_company = publish_company;
	}
	public String getPrint_company() {
		return print_company;
	}
	public void setPrint_company(String print_company) {
		this.print_company = print_company;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public int getBook_specs() {
		return book_specs;
	}
	public void setBook_specs(int book_specs) {
		this.book_specs = book_specs;
	}
	public String getBook_specs_content() {
		return book_specs_content;
	}
	public void setBook_specs_content(String book_specs_content) {
		this.book_specs_content = book_specs_content;
	}
	public String getYin_zhang() {
		return yin_zhang;
	}
	public void setYin_zhang(String yin_zhang) {
		this.yin_zhang = yin_zhang;
	}
	public int getRevision() {
		return revision;
	}
	public void setRevision(int revision) {
		this.revision = revision;
	}
	public int getPrint_quantity() {
		return print_quantity;
	}
	public void setPrint_quantity(int print_quantity) {
		this.print_quantity = print_quantity;
	}
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public String getZe_ren_editor() {
		return ze_ren_editor;
	}
	public void setZe_ren_editor(String ze_ren_editor) {
		this.ze_ren_editor = ze_ren_editor;
	}
	public String getZe_ren_department() {
		return ze_ren_department;
	}
	public void setZe_ren_department(String ze_ren_department) {
		this.ze_ren_department = ze_ren_department;
	}
	public int getPrint_status() {
		return print_status;
	}
	public void setPrint_status(int print_status) {
		this.print_status = print_status;
	}
	public String getPrint_status_content() {
		return print_status_content;
	}
	public void setPrint_status_content(String print_status_content) {
		this.print_status_content = print_status_content;
	}
	public int getPrint_quality() {
		return print_quality;
	}
	public void setPrint_quality(int print_quality) {
		this.print_quality = print_quality;
	}
	public String getPrint_quality_content() {
		return print_quality_content;
	}
	public void setPrint_quality_content(String print_quality_content) {
		this.print_quality_content = print_quality_content;
	}
	
}
