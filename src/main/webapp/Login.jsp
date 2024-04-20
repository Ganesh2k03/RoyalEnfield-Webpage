<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Royal Enfield-Login Page</title>
<style type="text/css">
*{
    margin: 0;
    padding: 0;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
}

body{
    background : url(./Login-bg.jpg);
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    min-height: 100vh;
    display:flex;
    justify-content: center;
    align-items: center;
}
.container{
    opacity: 0.8;
    position: relative;
    max-width: 700px;
    width: 570px;
    padding: 20px;
    border-radius: 8px;
    display: flex;
    column-gap: 20px;
    background : black;
}
.container:hover{
    box-shadow: 10px 10px 10px #ffbf00;
}

.Login-form-section{
    background-color: black;
    border-radius: 8px;
    width: 350px;
    height: 300px;
    padding: 20px;
}

input{
    padding: 5px;
    width: 250px;
    height: 40px;
    margin-bottom: 10px;
    background-color: rgb(45, 45, 45);
    color: white;
    box-sizing: border-box;
    outline: none;
    border: none;
    border-radius: 5px;
}

.Login-form-section h1{
    text-align: center;
    font-size: larger;
    margin-bottom: 10px;
}

.link{
    text-decoration: none;
    color: whitesmoke;
    font-size: small;
}

.link:hover{
    color: red;
}
.forget{
    position: relative;
    left: 125px;
}
p{
    margin-top: 10px;
}
.new{
    position: relative;
    left: 25%;
}
.btn{
    margin-top: 5px;
    background-color: #967300;
    color: black;
    font-size: 16px;
}

.btn:hover{
    color: whitesmoke;
}

@media screen and (max-width:600px) {
    body{
        flex: wrap;
    }
    .container{
        flex-wrap: wrap;
        position: relative;
        left: 0;
        width: 290px;
        display: flex;
        align-items: center;
        justify-content: center;
    }
}
@media screen and (min-width:768px)
and (max-width:1023px) {
    body{
        flex: wrap;
    }
    .container{
        position: relative;
        display: flex;
        align-items: center;
        justify-content: center;
    }
}
@media screen and (min-width:1024px)
and (max-width:1439px) {
    body{
        flex: wrap;
    }
    .container{
        position: relative;
        display: flex;
        align-items: center;
        justify-content: center;
    }
}

</style>
</head>
<body>
<div class="container">
    <div class="side"> 
    <img src="./LRe_logo.jpg" width="250px" height="340px">
    </div>  
	<div class="Login-form-section">
			<form action="Login" method="post">
				<h1 style="color:#967300;">ROYAL ENFIELD</h1>
				<h1 style="color:#967300;">LOGIN</h1>
				<input type="email" name="email" placeholder="Enter Mail" required>
				<input type="password" name="pass" placeholder="Enter Password" required>
				<a class="link forget" href="forget.jsp">forget password?</a>
				<input type="submit" value=Login class="btn">
			</form>
			<hr>
			<p style="color:red; text-align: center;font-size: small; font-family: sans-serif;">New user?</p>
			<a class="link new" href="Signup.jsp">Create New Account</a>
		</div>
	</div>
</body>
</html>