<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Grade</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Merienda:wght@300..900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Anta&family=Dancing+Script:wght@400..700&family=Honk:MORF@25&family=Madimi+One&family=Merienda:wght@800&family=Roboto+Slab:wght@100..900&family=Workbench&display=swap" rel="stylesheet">
<style>
    body {
        font-family: "Merienda", cursive;
        font-optical-sizing: auto;
        font-weight: 400px;
        background-color: black;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 50%;
        height: 480px;
        margin: 50px auto;
        background-color: #6853dd;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0,0,0,0.3);
        padding: 20px;
        text-align: center;
        position: relative;
        overflow: hidden;
    }
	.container  #top{
		position: absolute;
		width: 320px;
		height: 250px;
		left: 15px;
		top:10px
	}
	.container #bottom{
		position: absolute;
		width: 300px;
		height: 250px;
		right: 15px;
		bottom: 15px;
	}
   
    h2 {
        color: #ffffff;
		margin-top: 55px; 
	}
    p {
        font-size: 22px;
        color: #fff;
        margin: 20px 0;
    }
    .grade {
        font-size: 48px;
        font-weight: bold;
        color: #FFC300;
    }
    h3, .c1 , #c2{
        text-align: left;
        margin-top: 12px;
		margin-left: 60px;
        padding-left: 0;
		font-size: larger;
        color: black;
    }
    h3{
    color:#cccccc;
    }
	.c1,#c2{
		margin-left: 70px;
	}
	#c2{
	color:#ffff00;
	font-size:x-large;
	text-decoration:underline;
	}
</style>


</head>
<body>
	 <div class="container">
        <h2>Grand Grade Details</h2>
        <p>Your Grade:</p>
        <p class="grade"><%= request.getAttribute("grade") %></p>
        
        <h3>Points to Note:</h3>
        <p class="c1">Every setback is a setup for a comeback</p>
        <p id="c2"></p>   
        

		<p id="footer">All the best for your future.</p>
        <img src="Images/R.png" id="top">
        <img src="Images/L.png" id="bottom">
    </div>
    
    
    
    
    
    
    
    
    <script>
    var grade = '<%= request.getAttribute("grade") %>';
   

    if (grade == 'A') {
    	document.getElementById('c2').innerHTML = "Congratulations! Keeping rocking";
    } else if (grade == 'B') {
    	document.getElementById('c2').innerHTML = "Well done! Keep up the excellent work!";
    } else if (grade == 'C') {
    	document.getElementById('c2').innerHTML = "Keep it up! You're doing great!";
    } else if (grade == 'D') {
    	document.getElementById('c2').innerHTML = "Study well to improve your grade!";
    } else if (grade == 'F') {
    	document.getElementById('c2').innerHTML = "Concentrate on your studies to avoid failure.";
    }
</script>
</body>
</body>
</html>