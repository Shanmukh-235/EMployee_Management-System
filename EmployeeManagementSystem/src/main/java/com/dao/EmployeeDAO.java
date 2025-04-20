package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.model.Employee;

public class EmployeeDAO {
	Connection connection = null;
	public boolean saveuser(Employee employee) throws ClassNotFoundException, SQLException {
		connection = ConnectionManager.getConnection();
		String query = "INSERT INTO Employee VALUES(?,?,?,?,?,?,?,?)";
		PreparedStatement statement = connection.prepareStatement(query);
		statement.setString(1, employee.getEmail());
		statement.setString(2, employee.getName());
		statement.setString(3, employee.getPassword());
		statement.setInt(4, employee.getAge());
		statement.setString(5, employee.getGender());
		statement.setString(6, employee.getMobile());
		statement.setString(7, employee.getDepartment());
		statement.setString(8, employee.getAddress());
		int count = statement.executeUpdate();
		if(count==1) return true;
		else return false;
	}
	public void commit() throws SQLException {
		connection.commit();
		connection.close();
	}
	public void rollback() throws SQLException {
		connection.rollback();
		connection.close();
	}
}
