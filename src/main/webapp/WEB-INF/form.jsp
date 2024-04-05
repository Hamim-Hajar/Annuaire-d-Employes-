<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulaire Employé</title>
</head>
<body>
    <h2>Formulaire Employé</h2>
    <form action="employees?action=add" method="post">
    <label for="name">id:</label><br>
        <input type="text" id="id" name="id"><br>
        <label for="name">Nom:</label><br>
        <input type="text" id="name" name="name"><br>
        <label for="department">Département:</label><br>
        <input type="text" id="department" name="department"><br>
        <label for="designation">Désignation:</label><br>
        <input type="text" id="designation" name="designation"><br>
        <label for="salary">Salaire:</label><br>
        <input type="number" id="salary" name="salary"><br><br>
        <input type="submit" value="Ajouter">
    </form>
</body>
</html>
