package com.greatLearning.customerManagement.dao;

import java.util.List;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greatLearning.customerManagement.model.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDAO {

	@Autowired
	SessionFactory factory;
	@Override
	@Transactional
	public void saveCustomer(Customer customer) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(customer);
	}

	@Override
	@Transactional
	public void deleteCustomer(int customerId) {
		Session session = factory.getCurrentSession();
		session.delete(session.get(Customer.class, customerId));
	}

	@Override
	@Transactional
	public Customer findCustomerById(int customerId) {
		Session session = factory.getCurrentSession();
		Customer tempCustomer = session.get(Customer.class, customerId);
		System.out.println(tempCustomer);
		return tempCustomer;
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<Customer> displayAllCustomers() {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("from Customer");
		return query.getResultList();
	}

}
