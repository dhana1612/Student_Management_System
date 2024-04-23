<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudentInterface</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merienda:wght@300..900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Anta&family=Dancing+Script:wght@400..700&family=Honk:MORF@25&family=Madimi+One&family=Merienda:wght@800&family=Roboto+Slab:wght@100..900&family=Workbench&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Frijole&family=Tac+One&display=swap" rel="stylesheet">
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            color: rgb(255, 88, 88);
            font-family: "Merienda", cursive;
            font-optical-sizing: auto;
            font-weight: 400px;
        }
        body{
            width: 100%;
            height: 100vh;
            background-color: rgb(0, 0, 0);
        }
        h2{
            display: flex;
            font-family: "Merienda", cursive;
            font-optical-sizing: auto;
            font-weight: 400px;
            color: rgb(88, 255, 119);
            font-size: 28px;
            justify-content: center;
            margin-top: 40px;
        }
        h3{
            margin-top: 50px;
            display: flex;
            font-family: "Merienda", cursive;
            font-optical-sizing: auto;
            font-weight: 400px; 
            color: white;
            font-size: 24px;
            margin-left: 30px;
            color:yellow;
        }
        .container{
            display: flex;
            flex-wrap: wrap;
            flex-direction: row;
            justify-content: center;
        }
        .container .box1, .box2{
            width: 210px;
            height: 200px;
            border-color: white;
            border: 2px solid white;
            margin-top: 50px;
            margin-left: 60px;
            border-radius: 20px;
            background-image: linear-gradient( 268deg,  rgba(255,105,180,1) 4.1%, rgba(255,174,215,1) 74.3% );
            transition-property: width,height,background-image;
            transition-duration: 0.3s ;
            box-shadow: -7px -7px 10px 0px rgba(255, 255, 255, 0.5), 5px 5px 10px 0px rgba(255, 255, 255, 0.5);
        }
        .container .box1:hover ,.container .box2:hover{
            width: 240px;
            height: 220px;
            background-image: radial-gradient( circle farthest-corner at 11.7% 80.6%,  rgba(249,185,255,1) 0%, rgba(177,172,255,1) 49.3%, rgba(98,203,255,1) 89% );
        }
        .container .box1 input,.container .box2 input{
            
            width: 200px;
            height: 200px;
            color: black;
            background-color: transparent;
            font-size: 20px;
            font-family: "Merienda", cursive;
            font-optical-sizing: auto;
            font-weight: 400px;
            border: none;
            cursor: pointer;
            border-radius: 20px;
        }
        .container .box1 input:hover ,.container .box2 input:hover{
        	width: 240px;
            height: 220px;
        }
        .btn{
            width: 130px;
            height: 40px;
            border: none;
            text-indent: 0%;
            font-size: 16px;
            margin-left: 930px;
            margin-top: 40px;
            background-color: teal;
            border-radius: 30px;
            cursor: pointer;
        }
    </style>
</head>
<body>
		<h2>Hello,&nbsp;&nbsp;<strong><%= request.getAttribute("name") %></strong>! Let's keep track of your grades together.</h2>

    <h3>Please choose your preference</h3>


    <div class="container">
        <div class="box1">
            <form action="ViewDetails" method="post">
                <input type="hidden" name="rollnumber" value="<%= request.getAttribute("rollnumber") %>">
                <input type="submit" value="View Details">
            </form>
        </div>

        <div class="box2">
            <form action="GradeDetails" method="post">
                <input type="hidden" name="rollnumber" value="<%= request.getAttribute("rollnumber") %>">
               <input type="submit" value="Grade">
            </form>
        </div>
    </div>

        <input type="button" class="btn" value="Back to Home" onclick="window.location.href='student_login.jsp'">
</body>
</html>