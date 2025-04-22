package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EmployeeDAO;
import com.model.Employee;
@WebServlet("/edituser")
public class EditUser extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Employee employee = new Employee();
		employee.setName(request.getParameter("name"));
		employee.setEmail(request.getParameter("email"));
		employee.setPassword(request.getParameter("password"));
		employee.setAge(Integer.parseInt(request.getParameter("age")));
		employee.setGender(request.getParameter("gender"));
		employee.setMobile(request.getParameter("mobile"));
		employee.setDepartment(request.getParameter("department"));
		employee.setAddress(request.getParameter("address"));
		
		EmployeeDAO dao = new EmployeeDAO();
		try {
			boolean status = dao.updateEmployee(employee);
			if(status) {
				dao.commit();
				response.sendRedirect("findAll");
			} else {
				dao.rollback();
				RequestDispatcher dispatcher = request.getRequestDispatcher("edit.jsp");
				request.setAttribute("status", "Updation Failed");
				dispatcher.forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
