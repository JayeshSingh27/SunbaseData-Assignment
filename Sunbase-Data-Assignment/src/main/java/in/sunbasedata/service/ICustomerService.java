package in.sunbasedata.service;

import java.util.List;

import in.sunbasedata.model.Customer;

public interface ICustomerService {
	public List<Customer> getAll();
	public Customer getCustomer(Integer id);
	public void saveCustomer(Customer customer);
	public void updateCustomer(Customer customer);
	public void deleteCustomer(Integer id);
}
