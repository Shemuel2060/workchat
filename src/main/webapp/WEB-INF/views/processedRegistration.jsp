<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Workchat | Registration | processed</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/static/css/reset2.css" />">
<link rel="stylesheet" type="text/css" 	href="<c:url value="/static/css/processedRegistration.css" />">
<style>
</style>
</head>
<body>
	<h1>Hi, ${user.userData.name}</h1>
	<p>
		Thanks for contacting <span>WorkChat</span>.
	</p>
	<p>
		A verification code is sent to <i>${user.userData.email}</i>.
	</p>
	<p>
		Phone Number: <i>${user.userData.phone}</i>.
	</p>
	<p>You chose the following category:</p>
	<blockquote>${user.userType}</blockquote>
	<p>
		Go back to <a href="/workchat">WorkChat</a>
	</p>

</body>
</html>
