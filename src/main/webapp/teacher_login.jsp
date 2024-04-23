<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher's Login</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merienda:wght@300..900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Anta&family=Dancing+Script:wght@400..700&family=Honk:MORF@25&family=Madimi+One&family=Merienda:wght@800&family=Roboto+Slab:wght@100..900&family=Workbench&display=swap" rel="stylesheet">

    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            color: white;
        }
        body{
            background-color: rgb(0, 0, 0);
        }
        header .title{
            margin-top: 40px;
            color:yellow;
        }
        header .title, header .main legend{
            display: flex;
            font-family: "Merienda", cursive;
            font-optical-sizing: auto;
            font-weight: 400px;
            font-size: xx-large;
            justify-content: center;
        }
        header .main{
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        header .main fieldset{
            border: 3px rgb(255, 255, 255) solid;
            width:400px;
            height: 350px;
            padding: 40px;
            border-top-right-radius: 40px;
            border-bottom-left-radius: 40px;
            border-bottom-right-radius: 40px;
        }
        header .main input{
            width: 350px;
            height: 40px;
            margin-top: 20px;
            border-radius: 20px;
            font-size: large;
            border-color: white;
            text-indent: 20px;
            background-color: transparent;
        }
        header .main .btn{
            width: 130px;
            height: 40px;
            border: none;
            text-indent: 0%;
            font-size: 16px;
            background-color: teal;
            border-radius: 30px;
            cursor: pointer;
        }
        header .main .btn1{
            width: 130px;
            height: 40px;
            border: none;
            text-indent: 0px;
            font-size: 16px;
            background-color: teal;
            margin-top: 10px;
            margin-left: 45px;
            border-radius: 30px;
            cursor: pointer;
        }
         .messagePlaceholder{
            margin-left: 500px;
            margin-top: 30px;
        }
        .color{
            color: red;
            font-weight: 400;
            font-size: 26px;
        }
    </style>
</head>
<body>
	  <header>
        <div class="title">Teacher's Login Portal</div>
        
			<div class="messagePlaceholder">
    			<% if (request.getAttribute("message") != null) { %>
        		<h3 class="color"><%= request.getAttribute("message") %></h3>
    		<% } %>
			</div>

        <div class="main">
            <form action="LoginServlet" method="post">
                <fieldset>
                    <legend>Login</legend>
                    <input type="text" placeholder="Teacher Name" name ="name" required><br><br>
                    <input type="Password" placeholder="Password"  name ="password" required ><br><br>
                    <input type="Submit" class="btn1" value="Login">
                    <input type="button" class="btn" value="Back to Home" onclick="window.location.href='HomePage.jsp'">
                </fieldset>
            </form>
        </div>
    </header>
</body>
</html>