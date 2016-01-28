package com.tgb.model;

public class AssetsBalance {
	// 资金编号
	private String id;
	
	// 科目编号
	private String department_id;
	
	// 科目名称
	private String department_title;
	
	// 客户名称
	private String customer_name;
	
	// 核算单位
	private String account_scale;
	
	// 初期余额
	private double original_balance;
	
	// 借方累计
	private double debit_total;
	
	// 贷方累计
	private double credit_total;
	
	// 期末余额
	private double final_balance;
	
	// 总计
	private double balance_total;
	
	// 银行
	private String bank_name;
	
	// 制单人
	private String record_creator;
	
	// 表单制作日期
	private String record_create_date;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(String department_id) {
		this.department_id = department_id;
	}
	public String getDepartment_title() {
		return department_title;
	}
	public void setDepartment_title(String department_title) {
		this.department_title = department_title;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getAccount_scale() {
		return account_scale;
	}
	public void setAccount_scale(String account_scale) {
		this.account_scale = account_scale;
	}
	public double getOriginal_balance() {
		return original_balance;
	}
	public void setOriginal_balance(double original_balance) {
		this.original_balance = original_balance;
	}
	public double getDebit_balance() {
		return debit_total;
	}
	public void setDebit_balance(double debit_balance) {
		this.debit_total = debit_balance;
	}
	public double getCredit_balance() {
		return credit_total;
	}
	public void setCredit_balance(double credit_balance) {
		this.credit_total = credit_balance;
	}
	public double getFinal_balance() {
		return final_balance;
	}
	public void setFinal_balance(double final_balance) {
		this.final_balance = final_balance;
	}
	public double getBalance_total() {
		return balance_total;
	}
	public void setBalance_total(double balance_total) {
		this.balance_total = balance_total;
	}
	public String getBank_name() {
		return bank_name;
	}
	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}
	public String getRecord_creator() {
		return record_creator;
	}
	public void setRecord_creator(String record_creator) {
		this.record_creator = record_creator;
	}
	public String getRecord_create_date() {
		return record_create_date;
	}
	public void setRecord_create_date(String record_create_date) {
		this.record_create_date = record_create_date;
	}
}
