<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modifier Employé</title>
</head>
<body>
    <h2>Modifier Employé</h2>
    <form action="employees?action=update" method="post">
        <input type="hidden" name="id" value="${employee.id}">
        <label for="name">Nom:</label><br>
        <input type="text" id="name" name="name" value="${employee.name}"><br>
        <label for="department">Département:</label><br>
        <input type="text" id="department" name="department" value="${employee.department}"><br>
        <label for="designation">Désignation:</label><br>
        <input type="text" id="designation" name="designation" value="${employee.designation}"><br>
        <label for="salary">Salaire:</label><br>
        <input type="number" id="salary" name="salary" value="${employee.salary}"><br><br>
        <input type="submit" value="Mettre à jour">
    </form>
</body>
</html>
