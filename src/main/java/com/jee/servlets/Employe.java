package com.jee.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.*;


@WebServlet("/Employe")
public class Employe extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Employee> employees = new ArrayList<>();
   
    public Employe() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/webapp/Employe.jsp").forward(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String action = request.getParameter("action");
	        switch(action) {
	            case "add":
	                addEmployee(request, response);
	                break;
	           /* case "update":
	                updateEmployee(request, response);
	                break;
	            case "delete":
	                deleteEmployee(request, response);
	               break; */
	        }
	}


	private void addEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String name = request.getParameter("name");
	        String email = request.getParameter("email");
	        String phone = request.getParameter("phone");
	        String department = request.getParameter("department");
	        String position = request.getParameter("position");

	
	        Employee employee = new Employee(name, email, phone, department, position);
	        
	        
	        employees.add(employee);

	       
	        response.sendRedirect("Employe.jsp");
	}

}
