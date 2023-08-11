package in.sunbasedata.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="Customer")
@Data
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	String firstName;
	String lastName;
	String street;
	String address;
	String city;
	String state;
	String emailId;
	Long phoneNo;
}
