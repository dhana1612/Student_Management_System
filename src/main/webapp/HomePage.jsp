<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merienda:wght@300..900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Anta&family=Dancing+Script:wght@400..700&family=Honk:MORF@25&family=Madimi+One&family=Merienda:wght@800&family=Roboto+Slab:wght@100..900&family=Workbench&display=swap" rel="stylesheet">
<style>
		*{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body{
            width: 100%;
            height: 100vh;
            background-image: linear-gradient( 83.2deg,  rgba(150,93,233,1) 10.8%, rgba(99,88,238,1) 94.3% );
        }
        header .container{
            width: 100%;
            height: 80px;
            border-bottom-left-radius: 7px;
            border-bottom-right-radius: 7px;
            background-image: linear-gradient( 103.3deg,  rgba(252,225,208,1) 30%, rgba(255,173,214,1) 55.7%, rgba(162,186,245,1) 81.8% );
            color: rgb(0, 0, 0);
            transition-property: all;
            transition-duration: 0.5s;
        }
       
        header .container .head
        {
            font-size: 50px;
            text-align: center;
            font-family: "Merienda", cursive;
            font-optical-sizing: auto;
            font-weight: 100px;
            transition-property: all;
            transition-duration: 0.4s;
        }
       
        header .container1{
            display: flex;
            flex-wrap: wrap;
            flex-direction: row;
            justify-content: center;
            gap: 70px;
        }
        header .container1 .box1,.box2{
            width: 300px;
            height: 280px;
            margin-top: 100px;
            border-radius:20px;
            transition-property: all;
            transition-duration: 0.7s;
        }
        header .container1 .box1:hover, header .container1 .box2:hover{
            width: 320px;
            height: 300px;
        }
        .box1,.box2{
            position: relative;
            background-color: rgb(227, 225, 225);
            transition-property: all;
            transition-duration: 1s;
        }
        .box1:hover, .box2:hover{
            background-image: radial-gradient( circle farthest-corner at 10% 20%,  rgba(97,186,255,1) 0%, rgba(166,239,253,1) 90.1% );
        }
        .box1 .box1-1, .box2 .box2-1{
            position: absolute;
        }
        .box1 .box1-1 img{
            width: 210px;
            background-size: cover;
            margin-left: 50px;
        }

        .box2 .box2-1 img{
            width: 230px;
            height: 280px;
            background-size: cover;
            margin-left: 50px;
            margin-top: -10px;
        }

        .box1 .box1-2, .box2 .box2-2{
            position: absolute;
            color: rgb(255, 255, 255);
            font-family: "Merienda", cursive;
            font-weight: bolder;
            font-size: 24px;
            margin-left: 70px;
            margin-top: 245px;
        }
        .box1 .box1-2 a, .box2 .box2-2 a{
            text-decoration: none;
        }  

</style>

<meta charset="UTF-8">
<title>Home Page</title>
</head>
	<body>
    <header>
        <div class="container">
            <h2 class="head">Student Management System</h2>
        </div>


        <div class="container1">
            <div class="box1">
               <div class="box1-1">
                    <a href="student_login.jsp"><img src="Images/stu-removebg-preview.png"></a>
               </div>

               <div class="box1-2">
                <a href="#">Student Login</a>
               </div>
            </div>

            
            <div class="box2">
                <div class="box2-1">
                    <a href="teacher_login.jsp"><img src="Images/teacher-removebg-preview.png"></a>
                </div>
     
                <div class="box2-2">
                    <a href="#">Teacher Login</a>
                </div>
            </div>
        </div>
    </header>
</body>
</html>