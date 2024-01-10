<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WorkChat Login</title>
    <style>
      
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #000000;
            height: 100vh;
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
        	transition: font-size 0.3s ease; /* Smooth transition on hover */
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
        footer {
            text-align: center;
            padding: 10px;
            background-color: #00acee;
            color: white;
        }

        .main-page-container{
            display:flex;
            color:#fff;
            margin-left:200px;
            margin-top:80px;
            margin-right:0px;
            width:80%;
        }
        .welcome-text{
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.5);
            width:40%;
            margin-bottom:20px;
            margin-top:20px;
            text-align: center;
            display: flex;
            flex-direction: column;
            text-align: justify;
            justify-content: space-around;
            padding:20px;
            padding-left:100px;
        }
        .desc-note{
            width: 80%;
            height:50%;
            text-align: center;
            
        }
        .welcome-text h3{
            margin:0px;
            font-size: 20px;
            color:#00c9c8;
        }
        .welcome-text p{
            text-align: justify;
            line-height: 1.5;
            font-style: italic;
            width:100%;
            color: #fff;
        }
        .login-side{
            display:flex;
            color:#fff;
            box-shadow: 0 4px 8px rgba(220, 7, 7, 0.1); 
            flex-direction: column;
            padding-left:150px;
            margin-bottom:60px;
            
        }
        form {
            
            background-color: black;
            padding: 20px;
            border-radius: 15px;
            width: 60%;
            margin: auto;
            display: flex;
            flex-direction: column;
            height: 100%;
        }
        label {
            color: white;
            margin-bottom: 8px;
        }
        select,
        input[type="text"],
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
        
        a{
            text-decoration: none;
            display: inline;
            color:#00c9c8;
        }
       
        a:hover{
        	transition: font-size 0.3s ease; /* Smooth transition on hover */
            font-size: 25px;
            
        }
      
        .login-btn {
            width: 200px;
            font-size: 20px;
            background-color: #00acee;
            color: white;
            padding: 12px;
            border: 1px solid #00acee;
            border-radius: 20px;
            cursor: pointer;
        }

        .login-btn:hover {
            background-color: #007bb5;
        }
    </style>
</head>
<body>

    <nav class="navbar">
        <div class="logo-container">
            <a href="#" class="logo">
                <img class="logo-img" src="css/images-icons/Arola.png" alt="logo">
                WorkChat
            </a>
        </div>
        <div class="nav-links">
            <a href="/workchat">WorkChat Web</a>
            <a href="/workchat">Features</a>
            <a href="/workchat">Help Center</a>
            <!-- Add more links as needed -->
        </div>
    </nav>
   

    <section>
        <div class="main-page-container">
            <div class="welcome-text">
                <div class="desc-note">
                    <h3>For employers/recruiters:</h3>
                    <p>
                        "Establish meaningful connections with potential candidates 
                        by engaging with them before they formally apply. Conduct 
                        insightful screenings during the course of the conversation 
                        to gain a deeper understanding of their qualifications and 
                        suitability."                        
                    </p> 
                </div>
                <div class="desc-note">                      
                    <h3>For job seekers/freelancers:</h3>
                    <p>
                        "Connect with potential employers and discover numerous job 
                        opportunities or freelance gigs—all in one centralized 
                        platform. Streamline your job search or freelance pursuits 
                        by engaging with diverse opportunities through our platform."
                    </p>
                </div>
            </div>
              
                          

            <div class="login-side">
                
                <form action="">
                    <label for="">Login as</label>
                    <select name="membership-status" id="">
                        <option value="job-seeker">Job Seeker</option>
                        <option value="employer">Employer</option>
                        <option value="freelancer">Freelancer</option>
                    </select>
                    <label for="username">User Name</label>
                    <input type="text" required="required"/>
                    <label for="password">Password</label>
                    <input type="password" required="required"/>
                    <input type="button" value="Login" class="login-btn">  
                    <p>Don't have an account?<a href="showLoginForm">Register</a></p>                  
                </form>
            </div>

        </div>
    </section>

    <footer>
        &copy; 2024 WorkChat
    </footer>

    <!-- Add Font Awesome for icons -->
    <script src="https://kit.fontawesome.com/your-font-awesome-kit.js" crossorigin="anonymous"></script>
</body>
</html>
