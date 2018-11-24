package com.asif.springdemo.dao;

import java.util.List;

import com.asif.springdemo.entity.Customer;

public interface CustomerDAO {

	public List<Customer> getCustomers();

	public void saveCustomers(Customer theCustomer);

	public Customer getCustomers(int theId);

	public void deleteCustomer(int theId);


	
}
