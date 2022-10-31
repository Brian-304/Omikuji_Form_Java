<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<h1>Send an Omikuji!</h1>
		<form action='/show' method='POST'>
			<label for="total" class="form-label">Pick any number from 5
				to 25</label> <br /> <input type="number" name='number'>
			<div class="mb-3">

				<label>Enter the name of any city.</label> <br /> <input
					type="text" name='city'>
			</div>
			<div class="mb-3">
				<label>Enter the name of any real person.</label> <br /> <input
					type='text' name='person'>
			</div>
			<div class="mb-3">
				<label>Enter professional endeavor or hobby.</label> <br /> <input
					type='text' name='hobby'>
			</div>
			<div class="mb-3">
				<label>Enter any type of living thing.</label> <br /> <input
					type='text' name='thing'>
			</div>
			<div class="mb-3">
				<label for="description">Say something nice to someone:</label> <br>
				<textarea name="description" cols="35" rows="4"></textarea>
			</div>
			<input type='submit'>
		</form>
	</div>
</body>
</html>