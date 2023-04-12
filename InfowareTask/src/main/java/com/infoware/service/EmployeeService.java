package com.infoware.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infoware.entity.Employee;
import com.infoware.repo.EmployeeRepo;

@Service
public class EmployeeService {

	@Autowired EmployeeRepo repo ; 
	
	// register employee
	public String registerEmp(Employee emp) {
		String msg = null;
		if(repo.save(emp)!=null){
		  return 	msg="Employee registered successfully!";
		}
		return "Error to register employee";
}
	
	
	
	// get all employees
	public List<Employee> getAllEmployee(){
     return repo.findAll();
	}
	
	// delete employee by id
	public String deleteEmpById(Integer id) {
		
		Optional<Employee> e = repo.findById(id);
		if(e.isPresent())
		{
			repo.deleteById(id);
			
			return "Employee Deleted Sucessfully";
		}
		return "Error to delete Employee" ;
	}
}
