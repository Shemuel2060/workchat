<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!-- spring mvc taglib enables using spring mvc tags -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>

    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }
       header {
			background-color: #333;
			color: #fff;
			text-align: center;
			padding: 1em;
		}
        

        nav {
            background-color: #f8f9fa;
            padding: 10px 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        nav a {
            text-decoration: none;
            color: #007bff;
            margin: 0 15px;
            font-size: 18px;
        }

        .container {
            margin: 50px;
        }

        h1, h2 {
            color: #333;
        }

        form {
            max-width: 400px;
            margin: 20px 0;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f8f9fa;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin: 10px 0;
            color: #333;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        button {
            background-color: #007bff;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
       
       .contact-and-info-container{
       		display: flex;
       }
       
       .info-container{
       		margin: 80px 0px 20px 50px;
       		max-width: 700px;            
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f8f9fa;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
       
       }
        
      footer {
			background-color: #333;
			color: #fff;
			text-align: center;
			padding: 1em;
			position: fixed;
			bottom: 0;
			width: 100%;
		}
    </style>
</head>
<body>

  <header>
		<!-- Navigation Bar -->
		<nav>
			<a href="/workchat">WorkChat</a> 
			<a href="/workchat">Home</a> 
			<a href="#">About</a>
			<a href="#">Services</a> 
			<a href="showContactForm">Contact</a> 
			<a href="#">Join</a>
		</nav>
	</header>
    <!-- Contact Form -->
    <div class="contact-and-info-container">
    
	    <div class="container">
	        <h1>Contact Us</h1>
	        <!-- invoke the handler mapped at processContactForm -->
	        <form:form action ="processContactForm" modelAttribute="user">
	        
	            <label for="name">Name:</label>
	            <form:input id="name" path="name" required="required"/>
	
	            <label for="email">Email:</label>
	            <form:input id="email" path="email" required="required"/>
	
	            <label for="message">Message:</label>
	            <form:textarea id="message" path="message" rows="4" required="required"/>
	
	            <button type="submit">Submit</button>
	        </form:form>       
	        
	    </div>
	    <div class="info-container">
	    	<h1>Thanks for contacting us</h1>
	    </div>
    
    </div>
    <footer> &copy; 2024 WorkChat. All rights reserved. </footer>

</body>
</html>
