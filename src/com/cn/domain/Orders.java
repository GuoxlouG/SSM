package com.cn.domain;

public class Orders {
	Integer oid;
	String ocode;
	Customer customerid;
	Merchandise merchandiseid;
	Integer merchandisenumber;
	String orderdata;
	Employee employeeid;
	public Integer getOid() {
		return oid;
	}
	public void setOid(Integer oid) {
		this.oid = oid;
	}
	public String getOcode() {
		return ocode;
	}
	public void setOcode(String ocode) {
		this.ocode = ocode;
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
	public Integer getMerchandisenumber() {
		return merchandisenumber;
	}
	public void setMerchandisenumber(Integer merchandisenumber) {
		this.merchandisenumber = merchandisenumber;
	}
	public String getOrderdata() {
		return orderdata;
	}
	public void setOrderdata(String orderdata) {
		this.orderdata = orderdata;
	}
	public Employee getEmployeeid() {
		return employeeid;
	}
	public void setEmployeeid(Employee employeeid) {
		this.employeeid = employeeid;
	}
	
}
