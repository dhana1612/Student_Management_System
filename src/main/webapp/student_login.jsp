<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>student_login</title>
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
            font-size: 44px;
            justify-content: center;
            margin-top: 40px;
        }
        main {
			display: flex;
			flex-wrap: wrap;
			flex-direction: row;
			justify-content: center;
			width: 430px;
			height: 350px;
			margin-left: 460px;
            border: 3px solid white;
            padding: 40px;
            margin-top: 40px;
            border-radius: 60px;
            position: relative;
		}
        main form input{
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
           margin-top: 25px;
		   background-color: whitesmoke;
		}
        .btn{
            width: 150px;
            text-indent: 0px;
            font-size: 16px;
        }
        .btn1{
            width: 130px;
            text-indent: 0px;
            margin-left: 30px;
            margin-top:35px;
            font-size: 16px;
        }
        main .button{
            position: absolute;
            margin-top:205px;
            margin-left: 140px;
        }
        .btn1:hover,.btn:hover{
            color :white;
            background-color: red;
        }

    </style>
</head>
<body>
	<h2>Student's Login</h2>

    <main>
        <form action ="StudentServlet" method="post">

            <input type ="text" name="sname" placeholder="Enter Your Name">

            <input type ="Number" name="srollno" placeholder="Enter Your RollNumber">

            <input type ="date" name="sdob" placeholder="Date.Of.Birth"><br>

            <input type ="Submit" class="btn1">
        </form>

        <form action = "HomePage.jsp" method= "post" class="button">
            <input type =submit value ="Back to Home" class="btn">
       </form>
    </main>
</body>
</html>