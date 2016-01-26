package com.tgb.model;

public class RuKu {
	// 入库序号
	private int id;
	
	// 入库时间
	private String ru_ku_date;
	
	// 单号
	private String order_id;
	
	// 开单日期
	private String order_create_date;
	
	// 出版单位
	private String publish_company;
	
	// 送书单位
	private String deliver_company;
	
	// 收书单位
	private String receive_company;
	
	// 储运中心
	private String store_center;
	
	// 书名
	private String book_name;
	
	// 版次
	private int revision;
	
	// 数量
	private int quantity;
	
	// 单价
	private float price;
	
	// 码洋
	private int fixed_price;
	
	// 验书人
	private String check_man;
	
	// 收书人
	private String receive_man;
	
	// 备注
	private String comments;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRu_ku_date() {
		return ru_ku_date;
	}
	public void setRu_ku_date(String ru_ku_date) {
		this.ru_ku_date = ru_ku_date;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getOrder_create_date() {
		return order_create_date;
	}
	public void setOrder_create_date(String order_create_date) {
		this.order_create_date = order_create_date;
	}
	public String getPublish_company() {
		return publish_company;
	}
	public void setPublish_company(String publish_company) {
		this.publish_company = publish_company;
	}
	public String getDeliver_company() {
		return deliver_company;
	}
	public void setDeliver_company(String deliver_company) {
		this.deliver_company = deliver_company;
	}
	public String getReceive_company() {
		return receive_company;
	}
	public void setReceive_company(String receive_company) {
		this.receive_company = receive_company;
	}
	public String getStore_center() {
		return store_center;
	}
	public void setStore_center(String store_center) {
		this.store_center = store_center;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public int getRevision() {
		return revision;
	}
	public void setRevision(int revision) {
		this.revision = revision;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getFixed_price() {
		return fixed_price;
	}
	public void setFixed_price(int fixed_price) {
		this.fixed_price = fixed_price;
	}
	public String getCheck_man() {
		return check_man;
	}
	public void setCheck_man(String check_man) {
		this.check_man = check_man;
	}
	public String getReceive_man() {
		return receive_man;
	}
	public void setReceive_man(String receive_man) {
		this.receive_man = receive_man;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
}
