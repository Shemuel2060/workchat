<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- to be able to use JSTL tags -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/reset2.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/registry.css" />">
  
  
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