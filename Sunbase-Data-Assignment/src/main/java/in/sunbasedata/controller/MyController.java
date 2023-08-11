package in.sunbasedata.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import in.sunbasedata.model.Customer;
import in.sunbasedata.service.ICustomerService;

@Controller
@RequestMapping("/customer")
public class MyController {
	
	@Autowired
	ICustomerService service;	

	@GetMapping("/login")
	public String loginpage() {
		return "login";
	}
	
	@PostMapping("/checkuser")
	public String welcomePage(@RequestParam String userId, @RequestParam String password) {
		if(userId.equals("admin") && password.equals("root123")) {
			return "redirect:/customer/list";
		}
		return "redirect:/customer/login";
	}
	
	@GetMapping("/list")
	public String getList(Map<String,Object> model)
	{
		System.out.println("MyController.getList()");
		List<Customer> customer = service.getAll();
		customer.forEach(System.out::println);
		model.put("customers", customer);
		return "list-customers";		
	}
	
	@GetMapping("/showForm")
	public String showFormForAdd(Map<String, Object> model) {
		System.out.println("MyController.showFormForAdd()");
		Customer customer = new Customer();
		model.put("customer", customer);
		return "add-customer-record";
	}

	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer customer) {
		System.out.println("MyController.saveCustomer()");
		System.out.println(customer);
		service.saveCustomer(customer);
		return "redirect:/customer/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam Integer customerId, Map<String, Object> model) {
		Customer customer = service.getCustomer(customerId);
		service.deleteCustomer(customerId);
		System.out.println(customer);

		model.put("customer", customer);
		return "add-customer-record";
	}

	@GetMapping("/showFormForDelete")
	public String showFormForDelete(@RequestParam Integer customerId) {
		service.deleteCustomer(customerId);
		return "redirect:/customer/list";
	}

	

}
