package in.sunbasedata.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import in.sunbasedata.model.Customer;


public interface ICustomerRepository extends JpaRepository<Customer, Integer> {

}
