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
                <img class="logo-img" src="data:image/jpeg;base64,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" alt="">
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