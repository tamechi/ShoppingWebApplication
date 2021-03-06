<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" isErrorPage="true"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="tag"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">


<link rel="stylesheet" href="style/styles.css">
<title>Error</title>

<!-- <link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script> -->
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style>
</style>

</head>
<body>


	<jsp:include page="./headbar.jsp" />


	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="error-template">
					<h1 class="mycartlogo">Oops!</h1>
					<div class="error-details">
						<h4>
							<span class="mycartlogo"><tag:message code="anErrorOccured"></tag:message></span>
							: <br /> <span style="color: red; font-size: 20px"><%=request.getAttribute("errorMsg") == null ? "" : request.getAttribute("errorMsg")%><%=exception == null ? "" : exception.getMessage()%></span>
						</h4>
					</div>
					<div class="error-actions">
						<a href="./home" class="btn btn-primary btn-sm"><span
							class="glyphicon glyphicon-home"></span> <tag:message
								code="takeMeHome"></tag:message> </a>
					</div>
				</div>
			</div>
		</div>
	</div>



	<br>

	<pre>
	
	
	
	
	
	
	
	
	
	</pre>

	<jsp:include page="./footer.jsp" />






	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>


</body>
</html>