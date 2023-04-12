package com.infoware.controllers;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.infoware.entity.Employee;
import com.infoware.service.EmployeeService;

@Controller
public class EmployeeController{
	
	@Autowired
	EmployeeService service ; 

	@GetMapping("/")
	public String showHomePage() {
		return "home";
	}
	
	@GetMapping("/register")
	public String showRegisterForm() {
		return "add";
	}
	
	@PostMapping("/register")
	public String registerEmployee(Map<String,String> map ,  @ModelAttribute("emp") Employee emp) {
		String result =null;
		try {
			
		 result = service.registerEmp(emp);
		 map.put("result", result);
		 System.out.println(result);
	}
		catch(Exception e)
		{
			System.out.println("EmployeeController.registerEmployee() "+e.getMessage());
		}
	return "home";
	}
	
	
	@GetMapping("/all_employee")
	public String getAllEmployee(Map<String,List<Employee>> map) {
		List<Employee> empList =null;
		try {
			
			empList = service.getAllEmployee();
			if(empList==null) {
				
			}
			map.put("empList", empList);
			for(Employee e : empList) {
				System.out.println(e.getPhoneNo()+ "id--> "+e.getId());
			}
		}
		catch(Exception e)
		{
			System.out.println("EmployeeController.getAllEmployee() "+e.getMessage());
		}
		return "fetchAllEmployee";
 }
	// show employee for delete
	@GetMapping("/show_delete")
	public String showEmpForDelete(Map<String,List<Employee>> map) {
		List<Employee> empList =null;
		try {
			
			empList = service.getAllEmployee();
			if(empList==null) {
				
			}
			map.put("empList", empList);
		}
		catch(Exception e)
		{
			System.out.println("EmployeeController.getAllEmployee() "+e.getMessage());
		}
		return "delete";
	}
	
	
	// delete employee by id
	@GetMapping("/delete")
	public String deleteEmp(@RequestParam("id") Integer id) {
		try {
			service.deleteEmpById(id);
		}
		catch(Exception e)
		{
			System.out.println("EmployeeController.deleteEmp() "+e.getMessage());
		}
		return "redirect:/show_delete";
	}
}
