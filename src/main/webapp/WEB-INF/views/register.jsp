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

<style type="text/css">
.error {
	color: red;
	font-style: italic;
	width: 300px;
	margin-bottom: 10px;
}
</style>

<script type="text/javascript">
	function validateRegistration() {
		// get input field values
		userName = document.getElementById("userName").value;
		userEmail = document.getElementById("userEmail").value;
		pass = document.getElementById("userPassword").value;
		

		if (userName.length < 1 || userName.trim() === "") {
			alert("Please enter your user name!")
			return false;
		} else if (userEmail.length < 1 || userEmail.trim() === "") {
			alert("Please enter your email!")
			return false;
		}else if (pass.length < 1 || pass.trim() === "") {
			alert("Please enter your password!")
			return false;
		}else if (userPhoneNumber.length < 1 || userPhoneNumber.trim() === "") {
			alert("Please enter your phone number!")
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
			<a href="/workchat">ChatRoom</a> <a href="#">Features</a> <a href="#">Help
				Center</a>
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
				<form:form action="processRegistration" modelAttribute="user"
					onSubmit="return validateRegistration()">
					<form:label path="userData.name">Name</form:label>
					<form:input path="userData.name" id="userName" />
					<form:errors path="userData.name" class="error" />
					<form:label path="userData.email">Email</form:label>
					<form:input path="userData.email" id="userEmail" />
					<form:errors path="userData.email" class="error" />
					<form:label path="password">Password</form:label>
					<form:input path="password" id="userPassword" />
					<form:errors path="password" class="error" />
					<form:label path="userData.phone">Phone Number</form:label>
					<form:input path="userData.phone" id="userPhoneNumber" />
					<form:errors path="userData.phone" class="error" />


					<form:label path="userType">Choose category</form:label>
					<form:select path="userType">
						<form:option value="jobseeker" class="userCategory">Job Seeker</form:option>
						<form:option value="freelancer" class="userCategory">Freelancer</form:option>
						<form:option value="employer" class="userCategory">Employer</form:option>
					</form:select>

					<form:label path="termsAndconditions" for="terms-conditions"
						class="check-terms-label">
					I agree to the terms and conditions
					</form:label>
					<form:checkbox path="termsAndconditions" class="check-terms"
						id="terms-conditions" />
					<form:errors path="termsAndconditions" class="error" />
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