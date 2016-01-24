package com.tgb.model;

/*
 * 编审
 */
public class BianShen {
	// 编审编号
	private int id;
	
	// 书号
	private String book_id;
	
	// 书名
	private String book_name;
	
	// 丛书名
	private String sub_book_name;
	
	// 原著作者
	private String original_author;
	
	// 原出版社
	private String original_press;
	
	// 主要作者
	private String primary_author;
	
	// 其他署名作者
	private String other_author;
	
	// 责任编辑
	private String ze_ren_editor;
	
	// 文字编辑
	private String wen_zi_editor;
	
	// 美术编辑
	private String mei_shu_editor;
	
	// 校对
	private String proofreader;
	
	// 编审状态
	private int bian_shen_status;
	private String bian_shen_status_content;
	
	// 付印日期
	private String fu_yin_date;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBook_id() {
		return book_id;
	}
	public void setBook_id(String book_id) {
		this.book_id = book_id;
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
	public String getOriginal_author() {
		return original_author;
	}
	public void setOriginal_author(String original_author) {
		this.original_author = original_author;
	}
	public String getOriginal_press() {
		return original_press;
	}
	public void setOriginal_press(String original_press) {
		this.original_press = original_press;
	}
	public String getPrimary_author() {
		return primary_author;
	}
	public void setPrimary_author(String primary_author) {
		this.primary_author = primary_author;
	}
	public String getOther_author() {
		return other_author;
	}
	public void setOther_author(String other_author) {
		this.other_author = other_author;
	}
	public String getZe_ren_editor() {
		return ze_ren_editor;
	}
	public void setZe_ren_editor(String ze_ren_editor) {
		this.ze_ren_editor = ze_ren_editor;
	}
	public String getWen_zi_editor() {
		return wen_zi_editor;
	}
	public void setWen_zi_editor(String wen_zi_editor) {
		this.wen_zi_editor = wen_zi_editor;
	}
	public String getMei_shu_editor() {
		return mei_shu_editor;
	}
	public void setMei_shu_editor(String mei_shu_editor) {
		this.mei_shu_editor = mei_shu_editor;
	}
	public String getProofreader() {
		return proofreader;
	}
	public void setProofreader(String proofreader) {
		this.proofreader = proofreader;
	}
	public int getBian_shen_status() {
		return bian_shen_status;
	}
	public void setBian_shen_status(int bian_shen_status) {
		this.bian_shen_status = bian_shen_status;
	}
	
	public String getBian_shen_status_content() {
		return bian_shen_status_content;
	}
	
	public void setBian_shen_status_content(String bian_shen_status_content) {
		this.bian_shen_status_content = bian_shen_status_content;
	}
	
	public String getFu_yin_date() {
		return fu_yin_date;
	}
	public void setFu_yin_date(String fu_yin_date) {
		this.fu_yin_date = fu_yin_date;
	}
}
