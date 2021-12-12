package com.greatlearning.crm.dataservice.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.greatlearning.crm.dataservice.CustomerDataService;
import com.greatlearning.crm.domain.entities.Customer;

@Service
public class CustomerDataServiceImpl implements CustomerDataService {

	@SuppressWarnings("unused")
	private SessionFactory sessionFactory;

	private Session session;

	@Autowired
	public CustomerDataServiceImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		try {
			session = sessionFactory.getCurrentSession();
		} catch (HibernateException ex) {
			session = sessionFactory.openSession();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Customer> getAllCustomers() {
		Transaction transaction = session.beginTransaction();
		List<Customer> customers = session.createQuery("from Customer").list();
		transaction.commit();
		return customers;
	}

	@Override
	@Transactional
	public Customer findCustomerById(int id) {
		Transaction transaction = session.beginTransaction();
		Customer customer = session.get(Customer.class, id);
		transaction.commit();
		return customer;
	}

	@Override
	@Transactional
	public void saveCustomerDetails(Customer customer) {
		Transaction transaction = session.beginTransaction();
		session.saveOrUpdate(customer);
		transaction.commit();
	}

	@Override
	public void deleteCustomerById(int id) {
		Transaction transaction = session.beginTransaction();
		Customer customer = session.get(Customer.class, id);
		session.delete(customer);
		transaction.commit();
	}

}
