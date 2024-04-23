<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Details</title>
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
            margin-top: 30px;
        }
		main {
			display: flex;
			flex-wrap: wrap;
			flex-direction: row;
			justify-content: center;
			width: 300px;
			height: 300px;
			margin-left: 500px;
			margin-top: 10px;
		}
		main fieldset form{
			margin: 30px;
		}
		main fieldset form input{
			width: 350px;
           	height: 40px;
           text-indent: 40px;
           font-family: "Merienda", cursive;
            font-optical-sizing: auto;
            font-weight: 400px;
            font-size: 20px;
            color: rgb(0, 255, 119);
           border-radius: 20px;
           border: 3px solid rgb(255, 255, 255);
           margin-top: 10px;
		   margin-bottom: 10px;
		   background-color: transparent;
		}
		main fieldset{
			border: 5px solid white;
			margin-bottom: 20px;
			border-bottom-left-radius: 70px;
			border-bottom-right-radius: 70px;
			border-top-right-radius: 70px;
		}
		main fieldset legend {
           font-family: "Merienda", cursive;
            font-optical-sizing: auto;
            font-weight: 500px;
            font-size: 30px;
		}
		main .btn{
            width: 110px;
            margin-top: 30px;
            height: 40px;
            color: teal;
        	font-size: large;
			text-indent: 0px;
           	border-radius: 20px;
           margin-left: 40px;
           background-color: none;
           transition-property: all;
           transition-duration: 0.4s ease;
        }
        main .btn:hover , button:hover, #btn1:hover {
            color :white;
            background-color: red;
        }
		button,#btn1{
            width: 160px;
            height: 40px;
            color: teal;
            font-size: large;
           border-radius: 20px;
           border: none;
           background-color: none;
           transition-property: all;
           transition-duration: 0.4s ease;
        }
		
		.container{
			position: relative;
		}
		button{
			position: absolute;
			margin-left: 1000px;
			top: 350px;
		}
		#btn1{
			position: absolute;
			width: 240px;
			margin-left: 50px;
			top: 350px;
		}
		label{
			color: rgb(149, 125, 246);
			margin-top: 10px;
		}
		.messagePlaceholder{
            margin-left: 400px;
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
		<div class="container">
		<header>
			<h2>Update Student Details in Database</h2>
			<div class="messagePlaceholder">
    			<% if (request.getAttribute("message") != null) { %>
        		<h3 class="color"><%= request.getAttribute("message") %></h3>
    		<% } %>
			</div>
			
			
		</header>
		<main>
			<fieldset>
				<legend>Update</legend>
				<form action="Update2" method ="Post">
	
					<label>Enter the RollNumber</label><input type ="number" name="rollnumber" value="${rollNo}" readonly>
	
					<label>Enter the Name</label><input type ="text" name="name" value="${name}" required>
	
					<label>Enter the Department</label><input type ="text" name="dept" value="${dept}" required>
	
					<label>Enter the Sub1_Mark</label><input type ="number" name="s1" value="${sub1Mark}" required>
	
					<label>Enter the Sub2_Mark</label><input type ="number" name="s2" value="${sub2Mark}" required>
	
					<label>Enter the Sub3_Mark</label><input type ="number" name="s3" value="${sub3Mark}" required><br>
	
					<input type ="submit" class="btn">
	
					<input type ="reset" class="btn">
				</form>
	
			</fieldset>
		</main>
	
		<a href="TeacherInterface.jsp"><button>Back to Option</button></a>
	
		<form action="DisplayStudentDetailsServlet" method ="post">
			<input type ="submit" value="View the Student Detail" id="btn1">
		</form>
	</div>
	
	
	
	
	
</body>
</html>