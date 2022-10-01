package com.greatLearning.customerManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greatLearning.customerManagement.dao.CustomerDAO;
import com.greatLearning.customerManagement.model.Customer;

@Controller
@RequestMapping("customers")
public class CustomerController {
	
	@Autowired
	CustomerDAO customerDAO;
	
	@RequestMapping("home")
	public String homePage()
	{
		return "home";
	}
	
	@GetMapping("customerForm")
	public String showCustomerForm(Model model)
	{
		Customer newCustomer = new Customer();
		model.addAttribute("customer",newCustomer);
		return "customer-form";
	}
	
	@GetMapping("customerList")
	public String showCustomerList(Model model)
	{
		List<Customer> customers = customerDAO.displayAllCustomers();
		model.addAttribute("customers",customers);
		return "customer-list";
	}
	
	@PostMapping("save")
	public String saveCustomer(Model model, @ModelAttribute("customer") Customer customer)
	{
		customerDAO.saveCustomer(customer);
		return "redirect:/customers/customerList";
	}
	
	@GetMapping("update")
	public String updateCustomer(Model model, @RequestParam("id")int id)
	{
		Customer tempCustomer = customerDAO.findCustomerById(id);
		model.addAttribute("customer",tempCustomer);
		return "customer-form";
	}
	
	@GetMapping("delete")
	public String deleteCustomer(Model model, @RequestParam("id")int id)
	{
		customerDAO.deleteCustomer(id);
		return "redirect:/customers/customerList";
	}

}
