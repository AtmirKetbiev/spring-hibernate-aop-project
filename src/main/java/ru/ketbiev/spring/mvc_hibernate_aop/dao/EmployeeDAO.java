package ru.ketbiev.spring.mvc_hibernate_aop.dao;

import ru.ketbiev.spring.mvc_hibernate_aop.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    public List<Employee> getAllEmployees();

    public void saveEmployee(Employee employee);

    Employee getEmployee(int id);

    void delete(int id);
}
