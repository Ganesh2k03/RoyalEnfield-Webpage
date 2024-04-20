<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Royal Enfield-Signup page</title>
<style type="text/css">
*{
    margin: 0;
    padding: 0px;
    box-sizing: border-box;
    font-family: sans-serif;
}

body{
    background : url(./Signup-bg.jpg);
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.total{
    opacity: 0.8;
    max-width: 700px;
    width: 500px;
    position: relative;
    left: 300px;
    background: black;
    color: white;
    padding: 20px;
    border-radius: 8px;
}

label{
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    color: grey;
    
}

.total:hover{
    box-shadow: 10px 10px 10px #967300;
}

.form-head{
    font-family: sans-serif;
    font-size: larger;
    color: white;
    text-align: center;
    margin-bottom: 0px;
}

.total .forms{
    margin-top: 10px;
}

.forms .input-box{
    width: 100%;
    margin-top: 20px;
}

.inputs{
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    position: relative;
    height: 40px;
    width: 100%;
    outline: none;
    border: 1px solid bisque;
    font-size: 1rem;
    margin-top: 8px;
    border-radius: 6px;
    padding: 0 15px;
}

.forms .oneline{
    display: flex;
    column-gap: 15px;
}

.forms :where(.gender-opt,.gender){
    display: flex;
    align-items: center;
    column-gap: 50px;
    cursor: pointer;
    margin-top: 10px;
}

.rad{
    position: relative;
    left: 15px;
}
.forms .gender{
    column-gap: 30px;
}
.forms :where(.gender input,.gender label){
    cursor: pointer;
}

.butn{
    background-color: #967300;
    color: aliceblue;
    border: none;
    border-radius: 20px;
}

.butn:hover{
    color: black;
}

@media screen and (max-width:700px) {
    body{
        flex: wrap;
    }
    .total{
        flex-wrap: wrap;
        position: relative;
        left:0;
        display: flex;
        align-items: center;
        justify-content: center;
    }
}
@media screen and (min-width:701px)
and (max-width:1023px) {
    body{
        flex: wrap;
    }
    .total{
        flex-wrap:wrap;
        position : relative;
        right :200px;
        left:0;
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
    .total{
        display: flex;
        align-items: center;
        justify-content: center;
    }
}
</style>
</head>
<body>
	<section class="total">
		<div class="container">
		<h1 class="form-head" style="font-size:20px; color:#967300;">ROYAL ENFIELD</h1>
			<h1 class="form-head">Create New Account</h1>
			<form action="Signin" method="post" class="forms">
				<div class="oneline">
					<div class="input-box">
						<label>First Name</label> <input type="text"
							placeholder="Enter First Name" class="inputs" name="fname"
							required>
					</div>
					<div class="input-box">
						<label>Last Name</label> <input type="text"
							placeholder="Enter Last Name" class="inputs" name="lname"
							required>
					</div>
				</div>
				<div class="input-box">
					<label>Email Address</label> <input type="mail"
						placeholder="Enter Email Address" class="inputs" name="mail"
						required>
				</div>
				<div class="oneline">
					<div class="input-box">
						<label>Phone Number</label> <input type="number"
							placeholder="Enter Phone Number" class="inputs" name="phno"
							required>
					</div>
					<div class="input-box">
						<label>Date of Birth</label> <input type="date" name="dob"
							class="inputs" required>
					</div>
				</div>
				<div class="gender-box">
					<div class="gender-opt">
						<div class="gender">
							<label>Gender </label> <input type="radio" name="gender"
								value="Male" class="rad" required> <label>Male</label>
						</div>
						<div class="gender">
							<input type="radio" name="gender" value="Female" class="rad"
								required> <label>Female</label>
						</div>
					</div>
				</div>
				<div class="oneline">
					<div class="input-box">
						<label>Create Password</label> <input type="password"
							placeholder="Password" class="inputs" name="npass" required>
					</div>
					<div class="input-box">
						<label>Confirm Password</label> <input type="password"
							placeholder="Confirm Password" class="inputs" name="cpass"
							required>
					</div>
				</div>

				<input type="submit" value="Register" class="inputs butn">
			</form>
		</div>
	</section>
</body>
</html>