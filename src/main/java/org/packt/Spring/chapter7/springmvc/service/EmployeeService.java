package org.packt.Spring.chapter7.springmvc.service;

import java.util.List;

import org.packt.Spring.chapter7.springmvc.model.Employee;
import org.springframework.security.access.annotation.Secured;

public interface EmployeeService {
	// public void addEmployee(Employee employeee);
	@Secured({"ROLE_USER", "ROLE_GUEST"})
	public List<Employee> listEmployee();

	@Secured({"ROLE_USER", "ROLE_ADMIN"})
	public void insertEmployee(Employee employee);

	@Secured("ROLE_ADMIN")
	public void deleteEmployee(Integer employeeId);

	// public void removeEmployee(Integer employeeId);

}
