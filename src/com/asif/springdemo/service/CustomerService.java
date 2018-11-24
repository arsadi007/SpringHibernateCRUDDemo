package com.asif.springdemo.service;

import java.util.List;

import com.asif.springdemo.entity.Customer;

public interface CustomerService {
	
	public List<Customer> getCustomers();

	public void saveCustomers(Customer theCustomer);

	public Customer getCustomers(int theId);

	public void deleteCustomer(int theId);
}
