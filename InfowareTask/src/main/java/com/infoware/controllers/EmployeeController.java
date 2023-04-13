package com.infoware.controllers;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String registerEmployee( @ModelAttribute("emp") Employee emp , RedirectAttributes attr) {
		String result =null;
		try {
			
		 result = service.registerEmp(emp);
         attr.addFlashAttribute("result1","Employee registered successfully!");
		 System.out.println(result);
	}
		catch(Exception e)
		{
			System.out.println("EmployeeController.registerEmployee() "+e.getMessage());
		}
	return "redirect:/register";
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
	public String deleteEmp(@RequestParam("id") Integer id, RedirectAttributes attr) {
		try {
			service.deleteEmpById(id);
			attr.addFlashAttribute("result3","Employee Deleted Successfully!!" );
		}
		catch(Exception e)
		{
			System.out.println("EmployeeController.deleteEmp() "+e.getMessage());
		}
		return "redirect:/show_delete";
	}
	
	//show updation form
	@GetMapping("/update_emp")
	public String Update(@RequestParam Integer id ,  @ModelAttribute("emp") Employee emp )
	{
		try {
			Employee e = service.getEmpForUpdate(id);
			BeanUtils.copyProperties(e, emp);	
		}
		catch(Exception e)
		{
			System.out.println("EmployeeController.deleteEmp() "+e.getMessage());
		}
		return "update";
	}
	
	@PostMapping("/update")
	public String Update( @ModelAttribute("emp") Employee emp, RedirectAttributes attr)
	{
		String result =null;
		try {
			
		 result = service.updateEmployee(emp);
		 attr.addFlashAttribute("result2",result);

	}
		catch(Exception e)
		{
			System.out.println("EmployeeController.registerEmployee() "+e.getMessage());
		}
	return "redirect:/show_update";
	}
	
	
	@GetMapping("/show_update")
		public String showEmpForUpdate(Map<String,List<Employee>> map) {
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
			return "show_update";
			
		}
	
	@GetMapping("/get_pagination")
	public  String  showEmployeeReport(@PageableDefault(page=0,size=5,sort = "id",direction =Sort.Direction.ASC ) Pageable pageable,
			                                                      Map<String,Object> map) {		
		  //use serivce
		Page<Employee> page=service.getEmployeesPageData(pageable);
		// put the results in model attributes
		map.put("empsData",page);
		//return LVN
		return "pagination_view";
	}//method
	
	@GetMapping("/error")
	public String errorCode() {
		return "error";
	}
}
