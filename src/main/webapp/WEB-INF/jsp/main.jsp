<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SREBNAJE</title>
<style>
body {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	font-family: Arial, sans-serif;
	background-image: url('<%=request.getContextPath()%>/pictures/background.jpg');
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	color: #fff; /* Общий цвет текста */
	text-align: center; /* Центрируем весь текст на странице */
}

h1 {
	color: #fff;
	text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
	margin: 0; /* Убираем лишние отступы */
}

p.lead {
	font-size: 1.2em;
	color: #fff; /* Цвет текста SRENBAJE */
	text-align: center;
	margin: 20px 0;
	text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.7);
}

button {
	width: 200px;
	padding: 15px;
	margin: 10px;
	border: none;
	border-radius: 8px;
	color: white;
	font-size: 18px;
	cursor: pointer;
	background-color: #080808;
	transition: background-color 0.3s, transform 0.3s;
}

button:hover {
	background-color: #303032;
	transform: scale(1.05);
}

.logout-button {
	position: fixed;
	top: 20px;
	right: 20px;
	padding: 10px 18px; /* Уменьшил размеры кнопки */
	border: none;
	border-radius: 25px;
	color: white;
	font-size: 14px; /* Меньший шрифт */
	cursor: pointer;
	background-color: #ff0000; /* Ярко-красный цвет */
	transition: background-color 0.3s, transform 0.3s;
}

.logout-button:hover {
	background-color: #d33636; /* Темно-красный при наведении */
	transform: scale(1.1);
}

.footer {
	text-align: center;
	margin-top: 20px;
	font-size: 0.9em;
	color: #ddd;
}
</style>
</head>
<body>
	<!-- Кнопка Logout в верхнем правом углу -->
	<form action="MyController" method="post">
		<input type="hidden" name="command" value="LOG_OUT">
		<button type="submit" class="logout-button">LOG OUT</button>
	</form>

	<div class="container text-center">
		<h1>SREBNAJE</h1>
		<p class="lead">Welcome aboard!</p>
		<div class="content">
			<a href="MyController?command=go_to_glitch_page">
				<button>GLITCH</button>
			</a> 
			<a href="MyController?command=go_to_atmosphere_page">
				<button>ATMOSPHERE</button>
			</a>
		</div>
		<div class="footer">
			<p>&copy; 2024 SREBNAJE</p>
		</div>
	</div>
</body>
</html>
