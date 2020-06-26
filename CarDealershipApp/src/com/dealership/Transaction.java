package com.dealership;

import java.util.Date;

public class Transaction {
	private Customer customer;
	private Car car;
	private Date dateofSold;
	public Transaction() {
		super();
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Car getCar() {
		return car;
	}
	public void setCar(Car car) {
		this.car = car;
	}
	public Date getDateofSold() {
		return dateofSold;
	}
	public void setDateofSold(Date dateofSold) {
		this.dateofSold = dateofSold;
	}


	
	
	
	
}
