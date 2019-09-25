<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Main</title>
<link rel="stylesheet" href="css/adminMain.css">
</head>
<body>
	<form action="list" method="post">
		<button>Bus Schedule</button>
		<a href="List.jsp"></a>
	</form>
	<form action="AddBus.jsp" method="post">
		<button>Add Bus Schedule</button>
	</form>
	<form action="DeleteBus.jsp" method="post">
		<button>Delete Bus Schedule</button>
	</form>
	<form action="index.jsp">
		<button>EXIT</button>
	</form>
</body>
</html>