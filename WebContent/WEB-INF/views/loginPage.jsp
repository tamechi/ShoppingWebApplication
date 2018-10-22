<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<title>Login Page</title>

<link href="<c:url value="/style/styles.css" />" rel="stylesheet"
	type="text/css">

<!-- type="text/css"  -->

</head>



<body>

	<jsp:include page="./navbar.jsp" />


	<div class="container">
		<div class="row">
			<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
				<div class="card card-signin my-5">
					<div class="card-body">
						<h5 class="card-title text-center">Sign In</h5>
						<form class="form-signin" action="./loginUser" method="post">


							<div class="errorMsg"><%=request.getAttribute("errorMsg") == null ? "" : request.getAttribute("errorMsg")%></div>
							<%
								request.setAttribute("errorMsg", "");
							%>
							
							<div class="form-label-group">
								<label for="inputEmail">Email address</label> <input
									type="email" id="inputEmail" class="form-control"
									placeholder="Email address" required autofocus name="userEmail">
							</div>

							<br>

							<div class="form-label-group">
								<label for="inputPassword">Password</label> <input
									type="password" id="inputPassword" class="form-control"
									placeholder="Password" required name="userPassword">
							</div>

							<br>

							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input"
									id="customCheck1"> <label class="custom-control-label"
									for="customCheck1">Remember password</label>
							</div>
							<button class="btn btn-lg btn-primary btn-block text-uppercase"
								type="submit">Sign in</button>

							<br>
							<div style="text-align: center">
							<a href="./register" style="color: blue; font-size: 15px">Register new user</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<jsp:include page="./footer.jsp" />
	
</body>
</html>