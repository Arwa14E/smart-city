<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SIGN_UP.aspx.cs" Inherits="SIGN_UP" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Smart City</title>
  <style type="text/css">
    
* {
  box-sizing: border-box;
}

body {
   background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)), url(SMARTCITY.jpeg);
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  font-family: 'Montserrat', sans-serif;
  height: 100vh;
  margin: -20px 0 50px;

}
.wrapper {
    width: 1170px;
    margin: auto;
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
    margin-top: 30px;
}
.logo img {
    width: 50%;
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
h1 {
  font-weight: bold;
  margin: 0;
}

h2 {
  text-align: center;
}

p {
  font-size: 14px;
  font-weight: 100;
  line-height: 20px;
  letter-spacing: 0.5px;
  margin: 20px 0 30px;
}

span {
  font-size: 12px;
}

a {
  color: #333;
  font-size: 14px;
  text-decoration: none;
  margin: 15px 0;
}
button {
  border-radius: 20px;
  border: 1px solid #9CB2A5;
  background-color: #9CB2A5;
  color: #FFFFFF;
  font-size: 12px;
  font-weight: bold;
  padding: 12px 45px;
  letter-spacing: 1px;
  text-transform: uppercase;
  transition: transform 80ms ease-in;
}

button:active {
  transform: scale(0.95);
}

button:focus {
  outline: none;
}

button.ghost {
  background-color: transparent;
  border-color: #FFFFFF;
}
.button {
  border-radius: 20px;
  border: 1px solid #9CB2A5;
  background-color: #9CB2A5;
  color: #FFFFFF;
  font-size: 12px;
  font-weight: bold;
  padding: 12px 45px;
  letter-spacing: 1px;
  text-transform: uppercase;
  transition: transform 80ms ease-in;
}

.button:active {
  transform: scale(0.95);
}

.button:focus {
  outline: none;
}

.button.ghost {
  background-color: transparent;
  border-color: #FFFFFF;
}

form {
  background-color: #FFFFFF;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  padding: 0 50px;
  height: 100%;
  text-align: center;
}

input {
  background-color: #eee;
  border: none;
  padding: 12px 15px;
  margin: 8px 0;
  width: 100%;
}

.container {
  background-color: #fff;
  border-radius: 10px;
    box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
      0 10px 10px rgba(0,0,0,0.22);
  position: relative;
  justify-content:
  overflow: hidden;
  width: 768px;
  max-width: 100%;
  min-height: 480px;
}

.form-container {
  position: absolute;
  top: 0;
  height: 100%;
  transition: all 0.6s ease-in-out;
}

.sign-in-container {
  left: 0;
  width: 50%;
  z-index: 2;
}

.container.right-panel-active .sign-in-container {
  transform: translateX(100%);
}

.sign-up-container {
  left: 0;
  width: 50%;
  opacity: 0;
  z-index: 1;
}

.container.right-panel-active .sign-up-container {
  transform: translateX(100%);
  opacity: 1;
  z-index: 5;
  animation: show 0.6s;
}

@keyframes show {
  0%, 49.99% {
    opacity: 0;
    z-index: 1;
  }
  
  50%, 100% {
    opacity: 1;
    z-index: 5;
  }
}

.overlay-container {
  position: absolute;
  top: 0;
  left: 50%;
  width: 50%;
  height: 100%;
  overflow: hidden;
  transition: transform 0.6s ease-in-out;
  z-index: 100;
}

.container.right-panel-active .overlay-container{
  transform: translateX(-100%);
}

.overlay {
  background: #FF416C;
  background: -webkit-linear-gradient(to right, #9CB2A5, #8BA4B3);
  background: linear-gradient(to right, #9CB2A5, #8BA4B3);
  background-repeat: no-repeat;
  background-size: cover;
  background-position: 0 0;
  color: #FFFFFF;
  position: relative;
  left: -100%;
  height: 100%;
  width: 200%;
    transform: translateX(0);
  transition: transform 0.6s ease-in-out;
}

.container.right-panel-active .overlay {
    transform: translateX(50%);
}

.overlay-panel {
  position: absolute;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  padding: 0 40px;
  text-align: center;
  top: 0;
  height: 100%;
  width: 50%;
  transform: translateX(0);
  transition: transform 0.6s ease-in-out;
}

.overlay-left {
  transform: translateX(-20%);
}

.container.right-panel-active .overlay-left {
  transform: translateX(0);
}

.overlay-right {
  right: 0;
  transform: translateX(0);
}

.container.right-panel-active .overlay-right {
  transform: translateX(20%);
}

.social-container {
  margin: 20px 0;
}

.social-container a {
  border: 1px solid #DDDDDD;
  border-radius: 50%;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  margin: 0 5px;
  height: 40px;
  width: 40px;
}

footer {
    background-color: #222;
    color: #fff;
    font-size: 14px;
    bottom: 0;
    position: fixed;
    left: 0;
    right: 0;
    text-align: center;
    z-index: 999;
}

footer p {
    margin: 10px 0;
}

footer i {
    color: red;
}

footer a {
    color: #3c97bf;
    text-decoration: none;

}



      .style1
      {
          width: 100%;
      }



  </style>
  
</head>
<body>

  <header>
    <div class="wrapper">
        
<ul class="nav-area">
<li><a href="MainHome.aspx">HOME</a></li>

<li><a href="MainAbout.aspx">About</a></li>
<li><a href="SIGN_UP.aspx">SIGN UP / SIGN IN</a></li>
</ul>
</div>


<ul class="nav-area">


<table class="style1">
            <tr>
                <td style="width: 40%; padding-left:-10%;">
                     
                    
                     <img src="LOGO.PNG" alt="" style="width:500px ; height:300px ; margin-right:10%;">
                    

                     
                      &nbsp;</td>
                <td style="width: 50%;">
                     <li><a href="MainHome.aspx">BACK</a></li>
                     <div class="container" id="container">
                       <div class="form-container sign-up-container">
    <form action="#" runat=server>
      <h1>Create Account</h1>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="up"
          ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter User name"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="up"
          ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Email"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="up"
          ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    &nbsp;<asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Password" 
          TextMode="Password"></asp:TextBox> 
  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="up"
          ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      &nbsp;<asp:TextBox ID="TextBox6" runat="server" placeholder="Repeat Password" 
          TextMode="Password"></asp:TextBox>
       <asp:Button ID="Button2" CssClass ="button" runat="server" Text="Sign Up" ValidationGroup="up"
          onclick="Button2_Click" />
      <asp:Label ID="Label1" runat="server"></asp:Label>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
          ErrorMessage="Wrong Email Format" ControlToValidate="TextBox3" ForeColor="Red" ValidationGroup="up"
          ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
         
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
    ErrorMessage="Password must be 8 chars" ControlToValidate="TextBox5" ForeColor="Red" ValidationGroup="up"
    ValidationExpression="( *?[0-9a-zA-Z] *?){8,}"></asp:RegularExpressionValidator>
       <asp:CompareValidator ID="CompareValidator1" runat="server" 
          ControlToCompare="TextBox5" ControlToValidate="TextBox6" 
          ErrorMessage="password not match" ForeColor="Red" ValidationGroup="up"></asp:CompareValidator>
       
  </div>
  <div class="form-container sign-in-container">
    
    
    
      <table class="style1">
          <tr>
              <td >
                  &nbsp;</td>
              <td>
                  &nbsp;</td>
              <td>
                  &nbsp;</td>
          </tr>
          <tr>
              <td style=" width:10%;">
                  &nbsp;</td>
              <td style=" width:80%;">
                 
                  <h1>Sign In </h1>
      
      
      <asp:TextBox ID="TextBox1" runat="server" placeholder="Email"></asp:TextBox>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
          ErrorMessage="Wrong Email Format" ControlToValidate="TextBox1" ForeColor="Red" 
          ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
      <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
     
      
      <asp:Button ID="Button1" CssClass ="button" runat="server" Text="Login" 
          onclick="Button1_Click" />
                  &nbsp;</td>
              <td style=" width:10%;">
                  &nbsp;</td>
          </tr>
          <tr>
              <td>
                  &nbsp;</td>
              <td>
                  &nbsp;</td>
              <td>
                  &nbsp;</td>
          </tr>
      </table>
    
    
    
  </div>
  </form>
  <div class="overlay-container">
    <div class="overlay">
      <div class="overlay-panel overlay-left">
        <h1>Welcome Back!</h1>
        <p>To keep connected with us please login with your personal info</p>
        <button class="ghost" id="signIn">Sign In</button>
      </div>
      <div class="overlay-panel overlay-right">
        <h1>Hello, Friend!</h1>
        <p>Enter your personal details and start journey with us</p>
        <button class="ghost" id="signUp">Sign Up</button>
      </div>
    </div>
  </div>
                     </div>

                     &nbsp;</td>
                <td style="width: 10%;">
                    &nbsp;</td>
            </tr>
        </table>



<script type="text/javascript">
 const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
  container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
  container.classList.remove("right-panel-active");
});
  </script>
 
</body>
</html>