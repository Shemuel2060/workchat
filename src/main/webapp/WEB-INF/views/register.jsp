<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- to be able to use JSTL tags -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/reset2.css" />">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #000000;
            color: #fff;
        }
        .navbar {
            display: flex;
            justify-content: space-between;
            background-color:#00acee;
            overflow: hidden;
            padding: 15px;
            padding-right: 200px;
        }

        .navbar a {
            font-size: 20px;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        .nav-links, .logo-container{
            display:flex;
        }

        .navbar a:hover {
            font-size: 25px;
        }

        .logo {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        .logo-img{
            width:40px;
            height:40px;
        }
        .main-container{
            display:flex;
            /* justify-content: space-around; */
            padding-left: 50px;
            padding-right:200px;
            margin-top:50px;
            margin-bottom:80px;
            align-items: center;
        }
        form, header {
            padding: 20px;
            border-radius: 15px;
            width: 60%;
            margin: auto;
            display: flex;
            flex-direction: column;
            height: 100%;
        }
        header{
            font-size: 50px;
        }
        .reg-header{
        	width: 30%;
        	align-items:center;
        	justify-content:center; 
        	     
        }
        .reg-header p{
        	width:100%;
        	padding-left:50px;  
        }
        
        label {
            color: white;
            margin-bottom: 8px;
        }

        select,
        input[type="text"],
        input[type='email'],
        input[type="password"] {
            padding: 10px;
            margin-bottom: 10px;
            margin-bottom: 15px;
            border: 1px solid #00acee;
            border-radius: 5px;
            background-color: #333;
            color: white;
        }
        input{
            width: 300px;
        }
        .form{
            margin-right:200px;
        }

        .userType-more-details{ /* JS generated elements when user selects certain type*/

        }

        footer {
            margin-top:50px;
            padding:20px;
            text-align: center;
            padding: 10px;
            background-color: #00acee;
            color: white;
            height: 100px;
        }
    </style>
    <script defer>
        /* script to populate a form depending on whether
        a user has selected job-seeker, freelancer or employer */
        let userType = document.querySelector("option");
        console.log(userType);
    </script>
</head>
<body>

    <nav class="navbar">
        <div class="logo-container">
            <a href="/workchat" class="logo">
                <img class="logo-img" src="<c:url value="/static/images/Arola.png"/>" alt="logo">
                WorkChat
            </a>
        </div>
        <div class="nav-links">
            <a href="/workchat">WorkChat Web</a>
            <a href="#">Features</a>
            <a href="#">Help Center</a>
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
                <form action="handleRegistration" >
                    <label for="name">Name</label>
                    <input type="text" id="name" required />
                    <label for="email">Email</label>
                    <input type="email" id="email" required />
                    <label for="password">Password</label>
                    <input type="password" id="password" required/>
                    <label for="confirmPass">Confirm Password</label>
                    <input type="password" id="confirmPass" required />
                     
                </form>
            </div>
            <div class="userType-more-details">
                <label for="userType">Choose category</label>
                <select name="whichUser" id="userType">
                    <option value="job-seeker" class="userCategory">Job Seeker</option>
                    <option value="freelancer" class="userCategory">Freelancer</option>
                    <option value="employer" class="userCategory">Employer</option>
                </select>   
            </div>
            
        </div>
        
    </section>

    <footer>
        &copy; 2024 WorkChat
    </footer>
    
</body>
</html>