<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<style>
#cover {
	background: #222 url('https://wallpapercave.com/wp/wp2130554.jpg') center
		center no-repeat;
	background-size: cover;
	height: 100%;
	text-align: center;
	display: flex;
	align-items: center;
	position: relative;
}

#cover-caption {
	width: 100%;
	position: relative;
	z-index: 1;
}

/* only used for background overlay not needed for centering */
form:before {
	content: '';
	height: 100%;
	left: 0;
	position: absolute;
	top: 0;
	width: 100%;
	background-color: rgba(0, 0, 0, 0.3);
	z-index: -1;
	border-radius: 10px;
}
</style>
<meta charset="UTF-8">
<title>Login Page</title>
<body class="bg-info ">
	<section id="cover" class="min-vh-100">
		<div id="cover-caption">
			<div class="container">
				<div class="row text-white">
					<div
						class="col-xl-5 col-lg-6 col-md-8 col-sm-10 mx-auto text-center form p-4">
						<h1 class="display-4 py-2 text-truncate">Music Library</h1>
						<div class="px-2">
<%-- 							<form action="" class="justify-content-center">
 --%>								<div class="form-group">
									<form:form action="login.do" modelAttribute="user" class="justify-content-center">
										<%-- Error messages --%>
										<form:input path="userName" />
										<form:password path="password" />
										<input type="submit" value="Log In">
									</form:form>
								</div>
								<div class="form-group">
									<form:form action="createUser.do" modelAttribute="user"
										class="text-center">
										<form:input path="userName" value="user name" />
										<form:password path="password" value="password" />
										<input type="submit" value="Create Account">
									</form:form>
									<c:if test="${!empty userExists }"> ${userExists}</c:if>
								</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
<%-- 	<div class="row justify-content-center">
		<form:form action="login.do" modelAttribute="user" class="text-center">
			Error messages
			<form:input path="userName" />
			<form:password path="password" />
			<input type="submit" value="Log In">
		</form:form>
	</div>
	<div class="row justify-content-center">
		<form:form action="createUser.do" modelAttribute="user"
			class="text-center">
			<form:input path="userName" value="user name" />
			<form:password path="password" value="password" />
			<input type="submit" value="Create Account">
		</form:form>
	</div> --%>
</html>
</body>