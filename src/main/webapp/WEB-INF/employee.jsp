<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste des Employés</title>
</head>
<body>
    <h2>Liste des Employés</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Département</th>
            <th>Désignation</th>
            <th>Salaire</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${employees}" var="employee">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.name}</td>
                <td>${employee.department}</td>
                <td>${employee.designation}</td>
                <td>${employee.salary}</td>
                <td>
                    <a href="employees?action=edit&id=${employee.id}">Modifier</a>
                    <a href="employees?action=delete&id=${employee.id}">Supprimer</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="employees?action=showForm">Ajouter un Employé</a>
</body>
</html>
