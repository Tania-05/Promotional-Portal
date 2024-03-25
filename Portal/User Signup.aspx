<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="User Signup.aspx.vb" Inherits="Portal.User_Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
    <script>

        var overlay = document.getElementById("overlay");

        // Buttons to 'switch' the page
        var openSignUpButton = document.getElementById("slide-left-button");
        var openSignInButton = document.getElementById("slide-right-button");

        // The sidebars
        var leftText = document.getElementById("sign-in");
        var rightText = document.getElementById("sign-up");

        // The forms
        var accountForm = document.getElementById("sign-in-info")
        var signinForm = document.getElementById("sign-up-info");

        // Open the Sign Up page
        openSignUp = () =>{
            // Remove classes so that animations can restart on the next 'switch'
            leftText.classList.remove("overlay-text-left-animation-out");
        overlay.classList.remove("open-sign-in");
        rightText.classList.remove("overlay-text-right-animation");
        // Add classes for animations
        accountForm.className += " form-left-slide-out"
        rightText.className += " overlay-text-right-animation-out";
        overlay.className += " open-sign-up";
        leftText.className += " overlay-text-left-animation";
        // hide the sign up form once it is out of view
        setTimeout(function(){
            accountForm.classList.remove("form-left-slide-in");
            accountForm.style.display = "none";
            accountForm.classList.remove("form-left-slide-out");
        }, 700);
        // display the sign in form once the overlay begins moving right
        setTimeout(function(){
            signinForm.style.display = "flex";
            signinForm.classList += " form-right-slide-in";
        }, 200);
        }

        // Open the Sign In page
        openSignIn = () =>{
            // Remove classes so that animations can restart on the next 'switch'
            leftText.classList.remove("overlay-text-left-animation");
        overlay.classList.remove("open-sign-up");
        rightText.classList.remove("overlay-text-right-animation-out");
        // Add classes for animations
        signinForm.classList += " form-right-slide-out";
        leftText.className += " overlay-text-left-animation-out";
        overlay.className += " open-sign-in";
        rightText.className += " overlay-text-right-animation";
        // hide the sign in form once it is out of view
        setTimeout(function(){
            signinForm.classList.remove("form-right-slide-in")
            signinForm.style.display = "none";
            signinForm.classList.remove("form-right-slide-out")
        },700);
        // display the sign up form once the overlay begins moving left
        setTimeout(function(){
            accountForm.style.display = "flex";
            accountForm.classList += " form-left-slide-in";
        },200);
        }

        // When a 'switch' button is pressed, switch page
        openSignUpButton.addEventListener("click", openSignUp, false);
        openSignInButton.addEventListener("click", openSignIn, false);
    </script>
    <style>
        #DropDown1 {
            border: none; /* Remove default border */
            background-color: #e4e4e494; /* Background color */
            padding: 10px; /* Add padding */
            width: 328px; /* Set width */
            font-size: 14px; /* Set font size */
            font-weight: 300; /* Set font weight */
            border-radius: 5px; /* Add border radius for rounded corners */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Add box shadow */
        }

        /* Style dropdown options */
        #DropDown1 option {
            font-size: 14px; /* Set font size */
        }
        /* Style both buttons */
#Button1,
#Button2 {
        border-style: none;
            border-color: inherit;
            border-width: medium;
            /* Match the width of other buttons */
  /* Match the height of other buttons */
            font-size: 14px;
            text-transform: uppercase;
            background-color: var(--left-color); /* Use the left color for background */
            color: white;
            border-radius: 20px;
            cursor: pointer;
            margin-top: 15px;
}

#Button1:hover,
#Button2:hover {
  background-color: #7cbf9d; /* Darken the background color on hover */
}

        :root{
  --form-height:550px;
  --form-width: 900px;
  /*  Sea Green */
  --left-color: #9fdeaf;
  /*  Light Blue  */
  --right-color: #96dbe2;
}
        #Button1 {
    border-style: none;
    border-color: inherit;
    border-width: medium;
    /* Match the width of other buttons */
    /* Match the height of other buttons */
    font-size: 14px;
    text-transform: uppercase;
    background-color: var(--left-color); /* Use the left color for background */
    color: white;
    border-radius: 20px !important; /* Add border radius for curved edges */
    cursor: pointer;
    margin-top: 15px;
}

#Button1:hover {
    background-color: #7cbf9d; /* Darken the background color on hover */
}


body, html{
  width: 100%;
  height: 100%;
  margin: 0;
  font-family: 'Helvetica Neue', sans-serif;
  letter-spacing: 0.5px;
}

.container{
  width: var(--form-width);
  height: var(--form-height);
  position: relative;
  margin: auto;
  box-shadow: 2px 10px 40px rgba(22,20,19,0.4);
  border-radius: 10px;
  margin-top: 50px;
}
/* 
----------------------
      Overlay
----------------------
*/
.overlay{
  width: 100%; 
  height: 100%;
  position: absolute;
  z-index: 100;
  background-image: linear-gradient(to right, var(--left-color), var(--right-color));
  border-radius: 10px;
  color: white;
  clip: rect(0, 385px, var(--form-height), 0);
}

.open-sign-up{
    animation: slideleft 1s linear forwards;
}

.open-sign-in{
    animation: slideright 1s linear forwards;
}

.overlay .sign-in, .overlay .sign-up{
  /*  Width is 385px - padding  */
  --padding: 50px;
  width: calc(385px - var(--padding) * 2);
  height: 100%;
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  padding: 0px var(--padding);
  text-align: center;
}

.overlay .sign-in{
  float: left;
}

.overlay-text-left-animation{
    animation: text-slide-in-left 1s linear;
}
.overlay-text-left-animation-out{
    animation: text-slide-out-left 1s linear;
}

.overlay .sign-up{
  float:right;
}

.overlay-text-right-animation{
    animation: text-slide-in-right 1s linear;
}

.overlay-text-right-animation-out{
    animation: text-slide-out-right 1s linear;
}


.overlay h1{
  margin: 0px 5px;
  font-size: 2.1rem;
}

.overlay p{
  margin: 20px 0px 30px;
  font-weight: 200;
}
/* 
------------------------
      Buttons
------------------------
*/
.switch-button, .control-button{
  cursor: pointer;
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 171px;
  height: 40px;
  font-size: 14px;
  text-transform: uppercase;
  background: none;
  border-radius: 20px;
  color: white;
}

.switch-button{
  border: 2px solid;
}

.control-button{
  border: none;
  margin-top: 15px;
}

.switch-button:focus, .control-button:focus{
  outline:none;
}

.control-button.up{
  background-color: var(--left-color);
}

.control-button.in{
  background-color: var(--right-color);
}

/* 
--------------------------
      Forms
--------------------------
*/
.form{
  width: 100%; 
  height: 100%;
  position: absolute;
  border-radius: 10px;
}

.form .sign-in, .form .sign-up{
  --padding: 50px;
  position:absolute;
    /*  Width is 100% - 385px - padding  */
  width: calc(var(--form-width) - 385px - var(--padding) * 2);
  height: 100%;
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  padding: 0px var(--padding);
  text-align: center;
}

/* Sign in is initially not displayed */
.form .sign-in{
  display: none;
}

.form .sign-in{
  left:0;
}

.form .sign-up{
  right: 0;
}

.form-right-slide-in{
  animation: form-slide-in-right 1s;
}

.form-right-slide-out{
  animation: form-slide-out-right 1s;
}

.form-left-slide-in{
  animation: form-slide-in-left 1s;
}

.form-left-slide-out{
  animation: form-slide-out-left 1s;
}

.form .sign-in h1{
  color: var(--right-color);
  margin: 0;
}

.form .sign-up h1{
  color: var(--left-color);
  margin: 0;
}

.social-media-buttons{
  display: flex;
  justify-content: center;
  width: 100%;
  margin: 15px;
}

.social-media-buttons .icon{
  width: 40px;
  height: 40px;
  border: 1px solid #dadada;
  border-radius: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 10px 7px;
}

.small{
  font-size: 13px;
  color: grey;
  font-weight: 200;
  margin: 5px;
}

.social-media-buttons .icon svg{
  width: 25px;
  height: 25px;
}

#sign-in-form input, #sign-up-form input{
  margin: 12px;
  font-size: 14px;
  padding: 15px;
  width: 260px;
  font-weight: 300;
  border: none;
  background-color: #e4e4e494;
  font-family: 'Helvetica Neue', sans-serif;
  letter-spacing: 1.5px;
  padding-left: 20px;
}

#sign-in-form input::placeholder{
  letter-spacing: 1px;
}

.forgot-password{
  font-size: 12px;
  display: inline-block;
  border-bottom: 2px solid #efebeb;
  padding-bottom: 3px;
}

.forgot-password:hover{
  cursor: pointer;
}

/* 
---------------------------
    Animation
---------------------------
*/
@keyframes slideright{
  0%{
    clip: rect(0, 385px, var(--form-height), 0);
  }
  30%{
        clip: rect(0, 480px, var(--form-height), 0);
  }
  /*  we want the width to be slightly larger here  */
  50%{
     clip: rect(0px, calc(var(--form-width) / 2 + 480px / 2), var(--form-height), calc(var(--form-width) / 2 - 480px / 2));
  }
  80%{
         clip: rect(0px, var(--form-width), var(--form-height), calc(var(--form-width) - 480px));
  }
  100%{
     clip: rect(0px, var(--form-width), var(--form-height), calc(var(--form-width) - 385px));
  }
}

@keyframes slideleft{
  100%{
    clip: rect(0, 385px, var(--form-height), 0);
  }
  70%{
        clip: rect(0, 480px, var(--form-height), 0);
  }
  /*  we want the width to be slightly larger here  */
  50%{
     clip: rect(0px, calc(var(--form-width) / 2 + 480px / 2), var(--form-height), calc(var(--form-width) / 2 - 480px / 2));
  }
  30%{
         clip: rect(0px, var(--form-width), var(--form-height), calc(var(--form-width) - 480px));
  }
  0%{
     clip: rect(0px, var(--form-width), var(--form-height), calc(var(--form-width) - 385px));
  }
}

@keyframes text-slide-in-left{
  0% {
    padding-left: 20px;
  }
  100% {
    padding-left: 50px;
  }
}

@keyframes text-slide-in-right{
  0% {
    padding-right: 20px;
  }
  100% {
    padding-right: 50px;
  }
}

@keyframes text-slide-out-left{
  0% {
    padding-left: 50px;
  }
  100% {
    padding-left: 20px;
  }
}

@keyframes text-slide-out-right{
  0% {
    padding-right: 50px;
  }
  100% {
    padding-right: 20px;
  }
}

@keyframes form-slide-in-right{
  0%{
    padding-right: 100px;
  }
  100%{
    padding-right: 50px;
  }
}

@keyframes form-slide-in-left{
  0%{
    padding-left: 100px;
  }
  100%{
    padding-left: 50px;
  }
}

@keyframes form-slide-out-right{
  0%{
    padding-right: 50px;
  }
  100%{
    padding-right: 80px;
  }
}

@keyframes form-slide-out-left{
  0%{
    padding-left: 50px;
  }
  100%{
    padding-left: 80px;
  }
}

/* Style the text boxes */
#sign-in-info input,
#sign-up-info input {
        border-style: none;
            border-color: inherit;
            border-width: medium;
            margin: 12px;
            font-size: 14px;
            font-weight: 300;
            background-color: #e4e4e494;
            font-family: 'Helvetica Neue', sans-serif;
            letter-spacing: 1.5px;
            padding-left: 20px;
            border-radius: 5px; /* Add border radius for rounded corners */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding-right: 15px;
            padding-top: 15px;
            padding-bottom: 15px;
        }

#sign-in-info input::placeholder,
#sign-up-info input::placeholder {
  letter-spacing: 1px;
  color: #999; /* Placeholder text color */
}



    </style>
</head>
    <body>
<form id="form1" runat="server">
        <div class="container">
            <div class="overlay" id="overlay">
                <div class="sign-in" id="sign-in">
                    <h1>Welcome Back!</h1>
                    <p>To keep connected with us please login with your personal info</p>
                     <asp:Button ID="Button2" runat="server" Text="Sign In" Height="41px" Width="144px" />
                        
                </div>
                <div class="sign-up" id="sign-up">
                    <h1>Hello, Friend!</h1>
                    <p>Enter your personal details and start a journey with us</p>
                     <button class="switch-button" id="slide-left-button">Sign Up</button>
                </div>
            </div>
            <div class="form">
                <div class="sign-in" id="sign-in-info">
    <h1>Sign In</h1>
    <div class="social-media-buttons">
        <!-- Example social media icons using Font Awesome -->
        <a href="#" class="icon"><i class="fab fa-facebook-f"></i></a>
        <a href="#" class="icon"><i class="fab fa-twitter"></i></a>
        <a href="#" class="icon"><i class="fab fa-instagram"></i></a>
        <!-- Add more social media icons as needed -->
    </div>
    <p class="small">or use your email account:</p>
    <div>
                        <asp:TextBox runat="server" ID="signInEmail" placeholder="Email" />
                        <asp:TextBox runat="server" ID="signInPassword" TextMode="Password" placeholder="Password" />
                       <p class="forgot-password">Forgot your password?</p>
        <button class="control-button in">Sign In</button>
                    </div>
                </div>
               <div class="sign-up" id="sign-up-info">
    <h1>Create Account</h1>
    <div class="social-media-buttons">
        <!-- Example social media icons using Font Awesome -->
        <a href="#" class="icon"><i class="fab fa-facebook-f"></i></a>
        <a href="#" class="icon"><i class="fab fa-twitter"></i></a>
        <a href="#" class="icon"><i class="fab fa-instagram"></i></a>
        <!-- Add more social media icons as needed -->
    </div>
    <p class="small">or use your email for registration:</p>
    <div>
                        <asp:TextBox runat="server" ID="signUpName" placeholder="Name" Width="291px" />
                        <asp:TextBox runat="server" ID="signUpEmail" placeholder="Email" Width="291px" />
                        <asp:TextBox runat="server" ID="signUpPassword" TextMode="Password" placeholder="Password" Width="291px" /><br />
                        <asp:DropDownList ID="DropDown1" runat="server" AutoPostBack="true" Height="44px" width="328px">
                            <asp:ListItem>-Select-</asp:ListItem>
                            <asp:ListItem>Individual</asp:ListItem>
                            <asp:ListItem>Business</asp:ListItem>
                </asp:DropDownList><br /><br />
                     <asp:Button ID="Button1"  runat="server" Text="Sign Up" Width="291px"/>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
