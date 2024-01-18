<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Workchat | Login | processed</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #333;
            color: #f8f9fa;
            margin: 0;
            padding: 100px;
            justify-content: center;
            width:70%;
        }

        h1 {
            color: #007bff;
            margin-bottom: 10px;
        }

        p {
            font-size: 16px;
            margin-bottom: 15px;
        }

        span {
            font-style: italic;
            color: #28a745;
        }

        i {
            font-style: italic;
            color: #007bff;
        }

        blockquote {
            background-color: #e2e3e5;
            color:#007bff;
            padding: 10px;
            border-left: 5px solid #007bff;
            margin-top: 0;
            margin-bottom: 15px;
        }
       a{
        	color:#007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <h1>Hi, ${user.name}</h1>  
    <p>Welcome back to <span>WorkChat</span>.</p> 
    <p>Go back to <a href="/workchat">WorkChat</a></p>
   
</body>
</html>
