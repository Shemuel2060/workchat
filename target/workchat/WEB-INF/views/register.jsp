<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- to be able to use JSTL tags -->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Workchat | register</title>
<%-- <link rel="stylesheet" type="text/css"
	href="<c:url value="/static/css/reset2.css" />"> --%>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/static/css/registry.css" />">

<script type="text/javascript">
	function validateRegistration() {
		// get input field values
		userName = document.getElementById("userName").value;
		userEmail = document.getElementById("userEmail").value;
		pass = document.getElementById("userPassword").value;
		confirmPass = document.getElementById("userConfirmPassword").value;
		

		if (userName.length < 1 || userName.trim() === "") {
			alert("Please enter your user name!")
			return false;
		} else if (userEmail.length < 1 || userEmail.trim() === "") {
			alert("Please enter your email!")
			return false;
		}else if (pass.length < 1 || pass.trim() === "") {
			alert("Please enter your password!")
			return false;
		}else if (confirmPass.length < 1 || confirmPass.trim() === "" || confirmPass !==pass) {
			alert("Please confirm your password!")
			return false;
		} else {
			return true;
		}
	}
</script>


</head>
<body>

	<nav class="navbar">
		<div class="logo-container">
			<a href="/workchat" class="logo"> <img class="logo-img"
				src="<c:url value="/static/images/Arola.png"/>" alt="logo">
				WorkChat
			</a>
		</div>
		<div class="nav-links">
			<a href="/workchat">ChatRoom</a> <a href="#">Features</a> <a
				href="#">Help Center</a>
			<!-- Add more links as needed -->
		</div>
	</nav>


	<section>


		<div class="main-container">
			<div class="reg-header">
				<header>Register</header>
				<p>Choose category for further details. Thanks!</p>
			</div>
			<div class="form">
				<form:form action="processRegistration" modelAttribute="user" onSubmit="return validateRegistration()">
					<form:label path="name">Name</form:label>
					<form:input path="name" id="userName"  />
					<form:label path="email">Email</form:label>
					<form:input path="email" id="userEmail"/>
					<form:label path="password">Password</form:label>
					<form:input path="password" id="userPassword" />
					<form:label path="confirmPass">Confirm Password</form:label>
					<form:input path="confirmPass" id="userConfirmPassword" />


					<form:label path="userType">Choose category</form:label>
					<form:select path="userType">
						<form:option value="jobseeker" class="userCategory">Job Seeker</form:option>
						<form:option value="freelancer" class="userCategory">Freelancer</form:option>
						<form:option value="employer" class="userCategory">Employer</form:option>
					</form:select>

					<button type="submit" class="register-btn">Submit</button>

				</form:form>

			</div>

			<!-- to contain form for extra details: if job seeker or employer -->
			<div class="userType-more-details"></div>


		</div>

	</section>

	<footer> &copy; 2024 WorkChat </footer>

</body>
</html>