package com.tgb.model;

public class ChuKu {
	// 发书编号
	private String id;
	
	// 发书日期
	private String deliver_date;
	
	// 客户编号
	private String customer_id;
	
	// 客户名称
	private String customer_name;
	
	// 货主编号
	private String book_owner_id;
	
	// 货主名称
	private String book_owner_name;
	
	// 发货人
	private String deliver_man;
	
	// 发货人联系电话
	private String deliver_contact_phone;
	
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
	
	// 折扣
	private float discount;
	
	// 实样
	private int discounted_price;
	
	// 所在箱序号
	private String crate_id;
	
	// 送货地址
	private String deliver_address;
	
	// 邮编
	private String postcode;
	
	// 运输方式
	private int transportation;
	
	// 运输方式 content
	private String transportation_content;
	
	// 到站
	private String site_arrived;
	
	// 联系人
	private String contact_person;
	
	// 联系电话
	private String contact_phone;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDeliver_date() {
		return deliver_date;
	}
	public void setDeliver_date(String deliver_date) {
		this.deliver_date = deliver_date;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getBook_owner_id() {
		return book_owner_id;
	}
	public void setBook_owner_id(String book_owner_id) {
		this.book_owner_id = book_owner_id;
	}
	public String getBook_owner_name() {
		return book_owner_name;
	}
	public void setBook_owner_name(String book_owner_name) {
		this.book_owner_name = book_owner_name;
	}
	public String getDeliver_man() {
		return deliver_man;
	}
	public void setDeliver_man(String deliver_man) {
		this.deliver_man = deliver_man;
	}
	public String getDeliver_contact_phone() {
		return deliver_contact_phone;
	}
	public void setDeliver_contact_phone(String deliver_contact_phone) {
		this.deliver_contact_phone = deliver_contact_phone;
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
	public float getDiscount() {
		return discount;
	}
	public void setDiscount(float discount) {
		this.discount = discount;
	}
	public int getDiscounted_price() {
		return discounted_price;
	}
	public void setDiscounted_price(int discounted_price) {
		this.discounted_price = discounted_price;
	}
	public String getCrate_id() {
		return crate_id;
	}
	public void setCrate_id(String crate_id) {
		this.crate_id = crate_id;
	}
	public String getDeliver_address() {
		return deliver_address;
	}
	public void setDeliver_address(String deliver_address) {
		this.deliver_address = deliver_address;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public int getTransportation() {
		return transportation;
	}
	public void setTransportation(int transportation) {
		this.transportation = transportation;
	}
	public String getTransportation_content() {
		return transportation_content;
	}
	public void setTransportation_content(String transportation_content) {
		this.transportation_content = transportation_content;
	}
	public String getSite_arrived() {
		return site_arrived;
	}
	public void setSite_arrived(String site_arrived) {
		this.site_arrived = site_arrived;
	}
	public String getContact_person() {
		return contact_person;
	}
	public void setContact_person(String contact_person) {
		this.contact_person = contact_person;
	}
	public String getContact_phone() {
		return contact_phone;
	}
	public void setContact_phone(String contact_phone) {
		this.contact_phone = contact_phone;
	}
}
