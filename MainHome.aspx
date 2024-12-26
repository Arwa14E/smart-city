<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainHome.aspx.cs" Inherits="MainHome" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Smart City</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;900&display=swap" rel="stylesheet">
     
    <style type="text/css">* {
    margin: 0;
    padding: 0;
}
body {
    background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)), url(SMARTCITY.jpeg);
    font-family: 'Poppins', sans-serif;
}
.wrapper {
    width: 1170px;
    margin: auto;
}

.footer
    { 
        background: rgba(68,68,68,0.8);
       
        height:40px;
        position:fixed;
        width:100%;
        bottom: 5px;
    }


    
.nav {
  float: right;
  direction:ltr;
  background:transparent;
  height: 50px;
  width: 40%;
  display:block;
  justify-content:space-around;
  bottom: 0;
  margin-left:10px;
  margin-right:10px;
}

nav .icon:hover {
  border-color: #ced3d8 !important;
  padding-top: 5%;
  cursor: pointer;
}
.nav .profile-pic {
  
  background-size: cover;
  display: inline-block;
  border: 2px solid #d4d4d4 ;
  padding: 15px;
  /* لتغيير حجم الدائرة */
  border-radius: 50%;/* لضبط شكل الدائرة */
  box-shadow: 0 1px 3px 0 rgba(0,0,0,0.2);
   /* HOVER OFF */
   -webkit-transition: margin-top 0.3s;
}
.nav .profile-pic:hover {
 margin-top: -7px;
 transition: 0.3s;
  border: 2px solid #d1eaff ;
  /* border-color: #d1eaff !important; */
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  cursor: pointer;
  
  -webkit-transition: margin-top 0.3s;
}

.nav-active .profile-pic {
  border: 2px solid #0d375b ;
  /* border-color:  #0d375b !important; */
  /* animation: glow 1s infinite alternate; */
}
::-webkit-scrollbar {
  display: none;
}
.space {
  height: 200px;
}




.nav-area {
    float: right;
    list-style: none;
    margin-top: 30px;
}
.nav-area li {
    display: inline-block;
}
.nav-area li a {
    color: #fff;
    text-decoration: none;
    padding: 5px 20px;
    font-family: poppins;
    font-size: 16px;
    text-transform: uppercase;
}
.nav-area li a:hover {
    background: #fff;
    color: #333;
}
.logo {
    float: left;
}
.logo img {
    width: 50%;
  }
.welcome-text {
    position: absolute;
    width: 400px;
    height: 200px;
    
    text-align: center;
}
.welcome-text h1 {
    text-align: center;
    color: #fff;
    text-transform: uppercase;
    font-size: 40px;
   
}
.welcome-text h1 span {
    color: #00fecb;
}
.welcome-text a {
    border: 1px solid #fff;
    padding: 10px 25px;
    text-decoration: none;
    text-transform: uppercase;
    font-size: 14px;
   
    display: inline-block;
    color: #fff;
}
.welcome-text a:hover {
    background: #fff;
    color: #333;
}
.cards
{
    
   display:flex;
  justify-content:space-around;
    text-align: center;
    margin-top:3%;
}
.cards a {
    border: 1px solid #fff;
    padding: 10px 25px;
    text-decoration: none;
    text-transform: uppercase;
    font-size: 14px;
    margin-top: 20px;
    display: inline-block;
    color: #fff;
}
.cards a:hover {
    background: #fff;
    color: #333;
}
.cards h1 {
    text-align: center;
    color: #fff;
    text-transform: uppercase;
    font-size: 22px;
   margin-top: 5%;
}
/*resposive*/

@media (max-width:600px) {
    .wrapper {
        width: 100%;
    }
    .logo {
        float: none;
        width: 5%;
        text-align: center;
        margin: auto;
    }
   
    .nav-area {
        float: none;
        margin-top: 0;
    }
    .nav-area li a {
        padding: 5px;
        font-size: 11px;
    }
    .nav-area {
        text-align: center;
    }
    .welcome-text {
        width: 100%;
        height: auto;
        margin: 30% 0;
    }
    .welcome-text h1 {
        font-size: 30px;
    }
   
}
.flip-card {
  text-align: center;
  margin-right:5px;
  background-color: transparent;
  width: 220px;
  height: 220px;
  margin-top: 15px;
  font-size: 30px;
  
}

.flip-card-inner {

  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
}

.flip-card-back {
  background-color: #33383b;
  color: white;
  transform: rotateY(180deg);
}


        .style1
        {
            width: 100%;
        }


    </style>  
</head>
<body>
    <header>
    <div class="wrapper" style="margin-top:20px;">
        <div class="logo">
            <img src="LOGO.PNG" alt="">
        </div>
<ul class="nav-area">
<li><a href="MainHome.aspx">HOME</a></li>
<li><a href="MainAbout.aspx">About</a></li>
<li><a href="SIGN_UP.aspx">SIGN UP / SIGN IN</a></li>
</ul>
</div>
</header>

  <table style="width:100%;">
        <tr style="width:100%; ">
            <td style="width:10%;">
                &nbsp;</td>
            <td style="text-align :center;">
            
            <h1 style="color: #fff; font-size: 40px; margin-top:5%;">WELCOME TO</h1>
            <h1 style="color: #00fecb; font-size: 40px;">SMART CITY</h1>
            
                </td>
            <td style="width:10%;">
                &nbsp;</td>
        </tr>
           <tr>
            <td style="width:10%;">
                &nbsp;</td>
            <td style="width:80%; ">

<div class="cards" >
      
<div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front" >
        <img src="HO.jfif" alt="Avatar" style="width:220px;height:220px;">
      </div>
      <div class="flip-card-back">
        <h1>HOTELS</h1> 
        <a href="Hotals.aspx">More detailes</a>
        
      </div>
    </div>
  </div>
  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front" >
        <img src="caffee.jfif" alt="Avatar" style="width:220px;height:220px;">
      </div>
      <div class="flip-card-back">
        <h1>CAFEE</h1> 
        <a href="Caffee.aspx">More detailes</a>
        
      </div>
    </div>
  </div>
  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front" >
        <img src="Musumepic.jpg" alt="Avatar" style="width:220px;height:220px;">
      </div>
      <div class="flip-card-back">
        <h1>THEATERS & MUSEUMS</h1> 
        <a href="Musume.aspx">More detailes</a>
        
      </div>
    </div>
    
  </div>
  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front" >
        <img src="cima.jpg" alt="Avatar" style="width:220px;height:220px;">
      </div>
      <div class="flip-card-back">
        <h1>CINEMA</h1> 
        <a href="Cinema.aspx">More detailes</a>
        
      </div>
    </div>
    
  </div>
  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front" >
        <img src="restrunt.jfif" alt="Avatar" style="width:220px;height:220px;">
      </div>
      <div class="flip-card-back">
        <h1>RESTAURANT</h1> 
        <a href="RESTAURANT.aspx">More detailes</a>
        
      </div>
    </div>
    
  </div>

  

    </div>
 

                </td>
            <td style="width:10%;">
                &nbsp;</td>
        </tr>
    </table>


     <div class="footer">
  
        <table class="style1">
            <tr>
                <td width="30%">
                    &nbsp;</td>
               
                <td width="30%">
                    
                     <section id="nav" class="nav">
   
    <div id="i5" class="icon"  >
     <a id="email" runat="server"> <img  class="profile-pic" style="background-image:url(img/mail_icon.png)" ></a>
    </div>
  </section>

  <div class="space">
                <p style="color:White; text-align: right; margin-top:10px">Contact Us</p>
                     </div>

                    
                    
                    &nbsp;</td>
                    <td width="30%">
                    &nbsp;</td>
            </tr>
        </table>
  
   </div> 


</body>
</html>
