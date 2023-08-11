package in.sunbasedata.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.sunbasedata.model.Customer;
import in.sunbasedata.repository.ICustomerRepository;

@Service("service")
public class CustomerServiceImpl implements ICustomerService {

	@Autowired
	ICustomerRepository repo;
	
	@Override
	public List<Customer> getAll() {		
		return repo.findAll();
	}
	
	
	@Override
	public void saveCustomer(Customer customer) {
		repo.save(customer);
		System.out.println("Customer Record Inserted");		
	}


	@Override
	public void updateCustomer(Customer customer) {
		// TODO Auto-generated method stub
		repo.save(customer);
		System.out.println("Customer Record Updated");
		
	}


	@Override
	public void deleteCustomer(Integer id) {
		// TODO Auto-generated method stub
		Optional<Customer> opt = repo.findById(id);
		if(opt.get() != null) {
			repo.deleteById(id);
			System.out.println("Customer Record Deleted");
		}
		else {
			System.out.println("No Record Found");
		}
		
	}


	@Override
	public Customer getCustomer(Integer id) {
		
		return repo.findById(id).get();
	}
	

}
