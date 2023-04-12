package com.infoware.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.infoware.entity.Employee;

public interface EmployeeRepo extends JpaRepository<Employee, Integer> {

}
