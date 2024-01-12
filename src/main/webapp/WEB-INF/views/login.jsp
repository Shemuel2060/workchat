<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- to be able to use JSTL tags -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WorkChat Login</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/reset2.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/login.css" />">
    
</head>
<body>

    <nav class="navbar">
        <div class="logo-container">
            <a href="#" class="logo">
                <img class="logo-img" src="<c:url value="/static/images/Arola.png"/>" alt="logo">
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
                
                <form action="processLoginForm">
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
                    <button type="submit" class="login-btn">Login</button>  
                    <p>Don't have an account?<a href="register">Register</a></p>                  
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
