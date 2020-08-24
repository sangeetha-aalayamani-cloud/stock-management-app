<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!Doctype html>
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	background-color: #17a2b8;
	height: 100vh;
}

#login .container #login-row #login-column #login-box {
	margin-top: 120px;
	max-width: 600px;
	height: 320px;
	border: 1px solid #9C9C9C;
	background-color: #EAEAEA;
}

#login .container #login-row #login-column #login-box #login-form {
	padding: 20px;
}
</style>
<title>Stock Management App</title>
</head>
<body>
	<div id="login">
		<h3 class="text-center text-white pt-5">Stock Management App</h3>
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12">

						<div style="margin-top: 50px; margin-left: 200px; height: 50px;">
							<h2>Stock Inventory List</h2>
						</div>
						<table style="margin-top: 0px; margin-left: 100px;">
							<tr>
								<th>Stock Number</th>
								<th>Stock Name</th>
								<th>Purchase Price</th>
								<th>Purchase Date</th>
								<th>Quantity</th>
							</tr>
							<c:forEach items="${stockList}" var="stock">
								<tr>
									<td>${stock.stockNumber}</td>
									<td>${stock.stockName}</td>
									<td>${stock.purchasePrice}</td>
									<td>${stock.purchaseDate}</td>
									<td>${stock.quantity}</td>
									<td><a href="/edit?id=${stock.id}">Edit</a></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>