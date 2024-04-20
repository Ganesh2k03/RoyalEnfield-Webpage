<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset your Password</title>
<style type="text/css">
*{
    margin: 0;
    padding: 0;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
}
body{
    background : url(./forget-bg.jpg);
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;;
    min-height: 100vh;
    display:flex;
    justify-content: center;
    align-items: center;
}
.container{
    position: relative;
    max-width: 700px;
    width: 570px;
    padding: 20px;
    border-radius: 8px;
    display: flex;
    column-gap: 20px;
    background : black;
    color: white;
}
.container:hover{
    box-shadow: 10px 10px 10px gray;
}
.Login-form-section{
    background-color: black;
    width: 250px;
    height: 300px;
    padding: 20px;
}

input{
    padding: 5px;
    width: 250px;
    height: 40px;
    margin-bottom: 10px;
    box-sizing: border-box;
    outline: none;
    border: none;
    border-radius: 5px;
}

h1{
    font-size: 25px;
    text-align: center;
    margin-bottom: 16px;
}
.btn{
    margin-top: 5px;
    background-color: red;
    color:white;
}
.btn:hover{
    color:black;
}
@media screen and (max-width:650px) {
    .container{
        flex-wrap: wrap;
        width: 300px;
    }
    .side{
        position: relative;
        left: 20px;
    }
}
</style>
</head>
<body>
	<div class="container">
		<div class="side">
			<img src="./forget_re.jpg" width="250px" height="340px">
		</div>
		<div class="Login-form-section">
			<form action="forget" method="post">
			<h1 style="color: red">ROYAL ENFIELD</h1>
				<h1 style="font-size: 18px;">RESET PASSWORD</h1>
				<input type="email" name="email" placeholder="Enter Mail" required>
				<input type="password" name="npass" placeholder="Enter New Password" required>
			    <input type="password" name="cpass" placeholder="Confirm Password" required> 
			    <input type="submit" value="Update Password" class="btn">
			</form>
		</div>
	</div>
</body>
</html>