package com.greatLearning.customerManagement.dao;

import java.util.List;

import com.greatLearning.customerManagement.model.Customer;

public interface CustomerDAO {
	
	public void saveCustomer(Customer customer);
	public void deleteCustomer(int customerId);
	public Customer findCustomerById(int customerId);
	public List<Customer> displayAllCustomers();

}
