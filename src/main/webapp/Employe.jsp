<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<%@ page import="com.jee.servlets.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>here employe</title>
</head>
<body>
      <h1>hello world</h1>
       <h1>Liste des Employés</h1>
    <table border="1">
        <tr>
            <th>Nom</th>
            <th>Email</th>
            <th>Téléphone</th>
            <th>Département</th>
            <th>Poste</th>
        </tr>
        <%
            List<Employee> employees = (List<Employee>) request.getAttribute("employees");
            for (Employee employee : employees) {
        %>
        <tr>
            <td><%= employee.getName() %></td>
            <td><%= employee.getEmail() %></td>
            <td><%= employee.getPhone() %></td>
            <td><%= employee.getDepartment() %></td>
            <td><%= employee.getPosition() %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>