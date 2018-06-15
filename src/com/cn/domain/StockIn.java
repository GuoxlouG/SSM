package com.cn.domain;

public class StockIn {
	Integer sid;
	String scode;
	Customer customerid;
	Merchandise merchandiseid;
	Integer amount;
	String sprice;
	String stockindate;
	Employee employeeid;
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public String getScode() {
		return scode;
	}
	public void setScode(String scode) {
		this.scode = scode;
	}
	public Customer getCustomerid() {
		return customerid;
	}
	public void setCustomerid(Customer customerid) {
		this.customerid = customerid;
	}
	public Merchandise getMerchandiseid() {
		return merchandiseid;
	}
	public void setMerchandiseid(Merchandise merchandiseid) {
		this.merchandiseid = merchandiseid;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	
	public String getSprice() {
		return sprice;
	}
	public void setSprice(String sprice) {
		this.sprice = sprice;
	}
	public String getStockindate() {
		return stockindate;
	}
	public void setStockindate(String stockindate) {
		this.stockindate = stockindate;
	}
	public Employee getEmployeeid() {
		return employeeid;
	}
	public void setEmployeeid(Employee employeeid) {
		this.employeeid = employeeid;
	}
	
}
