<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- to be able to use JSTL tags -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WorkChat Home</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/reset2.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/home.css" />">
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
            <a href="/workchat">Features</a>
            <a href="/workchat">Help Center</a>
            <!-- Add more links as needed -->
        </div>
    </nav>
   

    <section>
        <div class="main-page-container">
            <div class="welcome-text">
                <h1>Welcome to WorkChat</h1>
                <p>Meet potential recruiters and job seekers</p>                
            </div>

            <div class="login-side">
                <h1>Use on Mac & Windows PC</h1>
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxEBXVYRBjmfcp2-yTMf75IoDGuWZaoEi9wA&usqp=CAU" alt="pc-image">
                <h1>Use on Mobile</h1>
                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAe1BMVEX///8AAACHh4fJycm2trbi4uInJyfr6+s+Pj47Ozvf39/y8vLu7u6Li4ujo6OgoKAvLy9/f39ZWVkRERFubm6ZmZlgYGCRkZGsrKwMDAyIiIj4+PhdXV02NjZSUlJzc3O/v78bGxvR0dFEREQRJj0UL08mMDo7QEUiISBnobSgAAADEklEQVR4nO3dX1eiQBiAcUcxFVIhEERFAfeP3/8Tbm11QRt03hheZznP76YLaA4P6KCNJycTAAAAAAAAAAC+w/e2WZbtXm0bNh3e9tg/mz3eu6FD4D0ZY4rVcrlcvXj7IXFOL5ddfe+QNnWam9TzF595/Nen+/lltJxm+3unfG7/3Oe3bp37TfPWPYPoKcuOQxxhT7PY7FqPK0jCj5Kgdajymm0HOcZe/CrveGwlJm6qYpO0714v1579Q+wpMpf2jUGYm4YfPysTtl/EiXeNOrbehW+KjkMKVnEjMP/1+5avuhqSs2uzzdbsujYfPjxKq1tsDl2/UIeRW5PN8Ry3T44vNqenptOme8D03D4v38OiOH1xyo9B01dXKKvcuu/PHyLLI5amtDxiP/OHqeURZ8at+wWFchRqo1COQm0UyrlWWN/GXhgZCqUo1EahnGuFl9EXZqMvXIRjLxz/axoK5SjURqGca4V1Zb/QraWZZIA7fsdq3R0M8bp0/IW2V0L6oVCOQm0UylGobfyFQ/ydxq3CIV61uVU4i8deOMS7Jwp1efnYC4eYaTo+f3oHvD+Umxm3Pgg9/rUnCuUo1EahHIXaxr+OP/5r6I/+c23jX12jUI5CbRTKUaiNQjkKtVEoR6E2CuUo1EahHIXaKJSjUBuFchRqo1COQm0UylGojUI5CrVRKEehNgrlKNRGoRyF2iiUo1AbhXIUaqNQjkJtFMpRqI1COQq1UShHoTYK5SjURqEchdoolKNQG4VyFGqjUI5CbRTKUaiNQjkKtVEoR6E2CuUo1EahHIXaKJSjUBuFchRqmz/Y/q6G0rHCRXE62h0xM7XdAXs6nuO53QHT0Lc6YG9bs7M6Xl2llh8UffmmCGyOl9zc+pLOyct/9Lb5nSJemFo9YTb4VW7vrNfFya2Z9K9ZbHaWnjplmNp9Vluyz01qY/4Lptc0cmyaeVNfjUk9f9GHX0bhOXVulnn3uFkaY4rl9xXPzmu37vUf+F4WRdH01eGwbkjeTbNXzc2HdZbtNjPnJlEAAAAAAAAAwP/hDx8VNkvpNIXDAAAAAElFTkSuQmCC" alt="mobile-img">
                <hr style="width:100%; margin-top:20px">
                <div>
                    <h1>Register as:</h1>
                    <ul class="signup-links">
                        <li><a href="#">Recruiter</a></li>
                        <li><a href="#">Job Seeker</a></li>
                        <li><a href="#">Freelancer</a></li>
                    </ul>
                    <h1>Already have an account?</h1>
                    <form action="showLoginForm">
                        <button type="submit">Login</button>
                    </form>
                    
                </div>
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
