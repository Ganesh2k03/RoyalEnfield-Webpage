<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password Updated</title>
  <style>
        body{
            margin: 0;
            padding: 0;
            background: url(./sucess-bg.jpg);
            background-repeat: no-repeat;
            background-position: center;
            background-size: 100% 100%;
        }
        .head{
            width: 100vw;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .contain{
            position: relative;
            top: -100px;
            opacity: 0.7;
            background-color: black;
            color: white;
            font-family: cursive;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 10px;
            border-radius: 8px;
        }
        .contain a{
            color: aliceblue;
            text-decoration: none;
            font-size: 20px;
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif ;
        }
        .contain a:hover{
            color: #967300;
        }

        .head .contain:hover{
            box-shadow: 10px 10px 10px #179300;
        }

@media screen and (max-width:767px) {
    body{
        flex: wrap;
        background-size: 100% 50%;
        background-color: black;
    }
    h1{
        font-size: 25px;
    }
}
@media screen and (min-width:768px)
and (max-width:1023px) {
    body{
        flex: wrap;
    }
}
@media screen and (min-width:1024px)
and (max-width:1439px) {
    body{
        flex: wrap;
    }
}
</st</style>
</head>
<body>
	<div class="head">
		<div class="contain">
			<h1>&#9989;Password Updated Successfully..&#128077;</h1>
			<a href="Login.jsp">Go To Login Page</a>
		</div>
	</div>
</body>
</html>