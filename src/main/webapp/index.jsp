<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Royal Enfield</title>
<style type="text/css">
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body{
    background: black;
    color: whitesmoke;
    overflow-x: hidden;
}
header{
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    padding: 10px 8px;
    background: black;
    display: flex;
    justify-content: space-between;
    align-items: center;
    z-index: 100;
}

header img{
    opacity: 0;
    animation: slideRight 1.5s ease forwards;
}

nav a{
    font-size: 18px;
    color: #967300;
    text-decoration: none;
    font-weight: 900;
    margin: 20px;
    opacity: 0;
    animation: slideTop 1.5s ease forwards;
    animation-delay: calc(.4s * var(--i));
}

.btn{
    color: #967300;
    text-decoration: none;
    font-size: 18px;
    font-weight: 900;
    margin-right: 10px;
}

nav a:hover{
    color: white;
    border-radius: 8px;
    padding: 5px;
}

.btn:hover{
    background-color: #967300;
    color: black;
    padding: 10px;
    border-radius: 2px;

}
.home{
    width: 100%;
    height: 100vh;
    display: flex;
    align-items: center;
    padding: 50px;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}

.content1{
    max-width: 730px;
}

.content1 h1{
    opacity: 0;
    animation: slideRight 1.5s ease forwards;
    font-size: 50px;
}

.content1 h3{
    opacity: 0;
    animation: slideLeft 2s ease forwards;
    animation-delay: 0.5s;
    font-size: 30px;
    color: #967300;
}

.content1 p{
    opacity: 0;
    font-size: 18px;
    margin-top: 20px;
    text-align: justify;
    animation: slideDown 2s ease forwards;
    animation-delay: 1s;
}

.content1 img{
    position: relative;
    left: 210px;
    width: 350px;
    height: 350px;
    border-radius: 8px;
    margin-right: 50px;
    opacity: 0;
    animation: zoomOut 1.5s ease forwards;
    animation-delay: 2s;
}

.Models{
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    width: 100vw;
    height: 100vh;
    padding: 40px;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}
.content2{
    width: 100vw;
    padding: 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: row;
    gap: 20px;
}
.hov{
    width: 400px;
    margin: 10px;
    transition: 0.8s;
}
.hov img{
    display: block;
    width: 100%;
    border-radius: 5px;
    aspect-ratio: 6/4;
}

.hov:hover{
    transform: scale(1.4);
    z-index: 2;
}

.Models h1{
    margin-bottom: 20px;
    text-align: center;
    font-size: 50px;
}

.Models h3{
    text-align: center;
    font-size: 30px;
    color: #967300;
}

.Models h4{
    text-align: center;
    color: #967300;
}

.Models p{
    text-align: justify;
}

.content2 .hov:hover{
    background-color: white;
    margin: 0 20px 0;
    color: black;
    width: 400px;
    font-size: small;
    border-radius: 5px;
    text-align: justify;
}

.about{
    width: 100vw;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 50px;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}

.content3{
    max-width: 630px;
    margin: 30px;
}

.content3 h1{
    font-size: 50px;
}

.content3 h3{
    margin-top: 10px;
    font-size: 30px;
    color: #967300;
}

.content3 p{
    margin-top: 20px;
    font-size: 20px;
    text-align: justify;
}

.content3 img{
    position: relative;
    width: 450px;
    height: 250px;
    border-radius: 8px;
    margin-right: 50px;
}

.Contact{
    position: relative;
    min-height: 100vh;
    padding: 20px 100px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}

.Contact .content4{
    max-width: 800px;
    text-align: center;
}
.Contact .content4 h2{
    font-size: 36px;
    color: #967300;
    font-weight: 600;
}
.Contact .content4 p{
    font-weight: 300;
    color: antiquewhite;
}

.Contain{
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 15px;
    gap: 20px;
}

.Contain .contactInfo{
    width: 50%;
    display: flex;
    flex-direction: column;
}

.contactform{
    width: 400px;
    height: 400px;
    padding: 30px;
    background: #967300;
    border-radius: 8px;
    margin-top: 30px;
    margin-right: 10px;
    color: black;
}
.contactform h2{
    text-align: center;
    font-size: 24px;
}

.contactform .inputbox{
    position: relative;
    width: 100%;
    margin-top: 15px;
}

.contactform .inputbox textarea,
.contactform .inputbox input{
    width: 100%;
    padding: 5px;
    font-size: 16px;
    margin: 10px 0;
    border: none;
    border-bottom: 2px solid #333;
    outline: none;
    resize: none;
    border-radius: 5px;
}
.contactform .inputbox span{
    position: absolute;
    left: 0;
    padding: 5px;
    font-size: 16px;
    margin: 10px 0;
    transition: 0.5s;
}

.contactform .inputbox input:focus ~ span,
.contactform .inputbox input:valid ~ span,
.contactform .inputbox textarea:focus ~ span,
.contactform .inputbox textarea:valid ~ span{
    font-size: 18px;
    transform: translateY(-30px);
}

.contactform .inputbox input[type="submit"]{
    width: 100%;
    border: none;
    cursor: pointer;
    padding: 10px;
    background-color: #333;
}


@keyframes slideRight{
    0%{
        transform: translateX(-100px);
        opacity: 0;
    }
    100%{
        transform: translateX(0);
        opacity: 1;
    }
}

@keyframes slideLeft{
    0%{
        transform: translateX(100px);
        opacity: 0;
    }
    100%{
        transform: translateX(0);
        opacity: 1;
    }
}

@keyframes slideTop{
    0%{
        transform: translateY(-100px);
        opacity: 0;
    }
    100%{
        transform: translateY(0);
        opacity: 1;
    }
}

@keyframes slideDown{
    0%{
        transform: translateY(100px);
        opacity: 0;
    }
    100%{
        transform: translateY(0);
        opacity: 1;
    }
}

@keyframes zoomOut{
    0%{
        transform: scale(1.1);
        opacity: 0;
    }
    100%{
        transform: scale(1);
        opacity: 1;
    }
}</style>
</head>
<body>    
    <header>
        <img src="./Head_logo.jpg"  style="border-radius: 8px;" height="100%" width="120px">
        <nav>
            <a href="#home" style="--i:1;">Home</a>
            <a href="#Models" style="--i:2;">Models</a>
            <a href="#About" style="--i:3;">About</a>
            <a href="#contact" style="--i:4;">Contact</a>
        </nav>
        <a class="btn" href="./Login.jsp">Login</a>
    </header>
    <!------home------>
    <section class="home" id="home">
        <div class="content1">
        <h1>ROYAL ENFIELD</h1>
        <h3>Made Like a Gun Goes Like a Bullet</h3>
        <p>A Royal Enfield in the garage is a crown on your life's achievements</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos labore deleniti cupiditate laborum vero possimus sint consequuntur quo nam incidunt, dolorum praesentium ipsam, accusantium sapiente, facere ex recusandae culpa. Autem nihil non vitae modi officia architecto suscipit veniam neque repellendus, deserunt facere dignissimos eum illum fugit? Odio excepturi fuga rem deserunt, aut quae beatae magnam tempora doloremque perspiciatis nemo sed inventore aliquam quam minima, iure quis quos, neque nobis itaque!</p>
    </div>
        <div class="content1 img">
            <img src="./Home_re.jpg" alt="">
        </div>
    </section>

    <!------Models------>
    <section class="Models" id="Models">
        <h1>MODELS</h1>
        <h3>PROFILES</h3>
        <div class="content2">
        <div class="hov">
            <img class="image"src="./Model1.jpg" alt="">
            <h4>RE Classic 350</h4> 
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Exercitationem fugiat tempore illo, aspernatur dolorem architecto similique laudantium asperiores molestias debitis aliquid officia possimus totam expedita?</p>
        </div>
        <div class="hov">
            <img class="image"src="./Model2.jpg" alt="">
            <h4>GT Continental 650</h4> 
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Tempora doloribus numquam quam aliquam odit voluptate, suscipit repellendus mollitia laboriosam similique!</p>
        </div>
        <div class="hov">
            <img class="image"src="./Model3.jpg" alt="">
            <h4>RE Himalayan</h4> 
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex quos minus similique, excepturi fugiat esse autem? Inventore natus tenetur qui!</p>
        </div>
        </div>
    </section>

<!------About------>
    <section class="about" id="About">
        <div class="content3">
        <h1>About Us</h1>
        <h3>Made Like a Gun Goes Like a Bullet</h3>
        <p> Lorem ipsum dolor sit, amet consectetur adipisicing elit. Reiciendis quibusdam beatae ullam odit nisi, eaque illum tenetur fugiat adipisci accusamus voluptas maiores laudantium repellendus itaque sit autem, minima id at!</p>
    </div>
        <div class="content3 img">
            <img src="./About.jpg"  alt="">
        </div>
    </section>


<!------Contact------>
    <section class="Contact" id="contact">
        <div class="content4">
            <h2>Contact Us</h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores consequatur nisi officiis modi, odio aspernatur delectus suscipit eum? Corrupti, dicta.</p>
        </div>
        <div class="Contain">
            <div class="contactInfo">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d250659.20903188566!2d76.71696918671874!3d10.997288700000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba85907eef26e0b%3A0xf41902e29c8af62f!2sRoyal%20Enfield%20Showroom%20-%20Bullmenn%20Motors!5e0!3m2!1sen!2sin!4v1712989873055!5m2!1sen!2sin" 
                width="400" height="350" style="border:0; border-radius: 8px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <div class="contactform">
                <form>
                    <h2>Send Message</h2>
                    <div class="inputbox">
                        <input type="text" required>
                        <span>Full Name</span>
                    </div>
                    <div class="inputbox">
                        <input type="mail" required>
                        <span>Email</span>
                    </div>
                    <div class="inputbox">
                        <textarea required></textarea>
                        <span>Type Your Message here...</span>
                    </div>
                    <div class="inputbox">
                        <input type="submit" value="Send" required>
                    </div>
                </form>
            </div>
        </div>
    </section>
</body>
</html>