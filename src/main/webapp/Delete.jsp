<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete the Student Details</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merienda:wght@300..900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Anta&family=Dancing+Script:wght@400..700&family=Honk:MORF@25&family=Madimi+One&family=Merienda:wght@800&family=Roboto+Slab:wght@100..900&family=Workbench&display=swap" rel="stylesheet">

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
            font-size: 44px;
            justify-content: center;
            margin-top: 40px;
        }
        
        label{
            display: flex;
            font-family: "Merienda", cursive;
            font-optical-sizing: auto;
            font-weight: 400px;
            font-size: 20px;
            margin-top: 40px;
        }

        main{
            border: 5px solid white;
            width: 650px;
            height: 320px;
            margin: auto; 
            padding: 20px;
            margin-top: 10px;
            border-radius: 20px; 
        }
        main .empty{
           width: 500px;
           height: 40px;
           text-indent: 40px;
           font-family: "Merienda", cursive;
            font-optical-sizing: auto;
            font-weight: 400px;
            font-size: 20px;
            color: black;
           border-radius: 20px;
           border: none;
           margin-top: 25px;
           margin-left: 40px;
           
        }
        main .btn{
            width: 150px;
            margin-top: 30px;
            height: 40px;
            color: teal;
            font-size: large;
           border-radius: 20px;
           border: none;
           margin-left: 90px;
           background-color: none;
           transition-property: all;
           transition-duration: 0.4s ease;
        }
        main .btn:hover , main button:hover{
            color :white;
            background-color: red;
        }
        main button{
            width: 160px;
            margin-top: 30px;
            height: 40px;
            color: teal;
            font-size: large;
           border-radius: 20px;
           border: none;
           margin-left: 205px;
           background-color: none;
           transition-property: all;
           transition-duration: 0.4s ease;
        }
        .messagePlaceholder{
            margin-left: 520px;
            margin-top: 30px;
        }
        .color{
            color: yellow;
            font-weight: 400;
            font-size: 26px;
        }
    </style>
</head>
<body>
		<header>
    <h2>Delete the Student Details</h2>
    <div class="messagePlaceholder">
    			<% if (request.getAttribute("message") != null) { %>
        		<h3 class="color"><%= request.getAttribute("message") %></h3>
    		<% } %>
			</div>
			
			<div class="messagePlaceholder">
    			<% if (request.getAttribute("error") != null) { %>
        		<h3 class="color"><%= request.getAttribute("error") %></h3>
    		<% } %>
			</div>
    </header>

    <main>
        <form action ="DeleteServlet" method="post">
            <label>Please input the RollNo of the student you wish to remove:</label>
            <input type ="number" name="rollnumber" class="empty" required><br>
            <input type ="Submit" class="btn">
            <input type ="Reset" class="btn"><br> 
        </form>
        <a href="TeacherInterface.jsp"><button>Back to Option</button></a>
    </main>
</body>
</html>