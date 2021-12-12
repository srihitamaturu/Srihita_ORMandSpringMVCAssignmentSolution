package com.greatlearning.crm.dataservice;

import java.util.List;

import org.springframework.stereotype.Service;

import com.greatlearning.crm.domain.entities.Customer;

@Service
public interface CustomerDataService {

	// Get Info about all Customers
	public List<Customer> getAllCustomers();

	// Find Customer record by using id
	public Customer findCustomerById(int id);

	// Insert and update method
	public void saveCustomerDetails(Customer customer);

	// Delete method
	public void deleteCustomerById(int id);

}
