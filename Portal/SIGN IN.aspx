<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Sign In.aspx.vb" Inherits="Portal.Sign_In" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style>
        html {
            height: 100%;
        }

        body {
            margin:0;
            padding:0;
            font-family: sans-serif;
            background: linear-gradient(#141e30, #243b55);
        }

        .login-box {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 400px;
            padding: 40px;
            transform: translate(-50%, -50%);
            background: rgba(0,0,0,.5);
            box-sizing: border-box;
            box-shadow: 0 15px 25px rgba(0,0,0,.6);
            border-radius: 10px;
        }

        .login-box h2 {
            margin: 0 0 30px;
            padding: 0;
            color: #fff;
            text-align: center;
        }

        .login-box .user-box {
            position: relative;
        }

        .login-box .user-box input {
            width: 100%;
            padding: 10px 0;
            font-size: 16px;
            color: #fff;
            margin-bottom: 30px;
            border: none;
            border-bottom: 1px solid #fff;
            outline: none;
            background: transparent;
        }

        .login-box .user-box label {
            position: absolute;
            top:0;
            left: 0;
            padding: 10px 0;
            font-size: 16px;
            color: #fff;
            pointer-events: none;
            transition: .5s;
            margin-left: 5px;
        }

        .login-box .user-box input:focus ~ label,
        .login-box .user-box input:valid ~ label {
            top: -20px;
            left: 0;
            color: #03e9f4;
            font-size: 10px;
        }

.login-box form a {
    position: relative; /* Ensure positioning is relative to its parent */
    display: inline-block;
    padding: 10px 20px;
    color: #03e9f4;
    font-size: 10px;
    text-decoration: none;
    overflow: hidden;
    transition: .5s;
    margin-top: 2px;
    letter-spacing: 4px;
    top: 50%; /* Moves the top edge of the element to the vertical center */
    left: 50%; /* Moves the left edge of the element to the horizontal center */
    transform: translate(-50%, -50%); /* Centers the element both horizontally and vertically */
}


        /*.login-box a:hover {
            background: #03e9f4;
            color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 5px #B3E5FC,
            0 0 25px #03e9f4,
            0 0 50px #03e9f4,
            0 0 100px #B3E5FC;
        }*/

        .login-box a span {
            position: absolute;
            display: block;
        }

        .login-box a span:nth-child(1) {
            top: 0;
            left: -100%;
            width: 100%;
            height: 2px;
            background: linear-gradient(90deg, transparent, #03e9f4);
            animation: btn-anim1 1s linear infinite;
        }

        @keyframes btn-anim1 {
            0% {
                left: -100%;
            }
            50%,100% {
                left: 100%;
            }
        }

        .login-box a span:nth-child(2) {
            top: -100%;
            right: 0;
            width: 2px;
            height: 100%;
            background: linear-gradient(180deg, transparent, #03e9f4);
            animation: btn-anim2 1s linear infinite;
            animation-delay: .25s
        }

        @keyframes btn-anim2 {
            0% {
                top: -100%;
            }
            50%,100% {
                top: 100%;
            }
        }

        .login-box a span:nth-child(3) {
            bottom: 0;
            right: -100%;
            width: 100%;
            height: 2px;
            background: linear-gradient(270deg, transparent, #03e9f4);
            animation: btn-anim3 1s linear infinite;
            animation-delay: .5s
        }

        @keyframes btn-anim3 {
            0% {
                right: -100%;
            }
            50%,100% {
                right: 100%;
            }
        }

        .login-box a span:nth-child(4) {
            bottom: -100%;
            left: 0;
            width: 2px;
            height: 100%;
            background: linear-gradient(360deg, transparent, #03e9f4);
            animation: btn-anim4 1s linear infinite;
            animation-delay: .75s
        }

        @keyframes btn-anim4 {
            0% {
                bottom: -100%;
            }
            50%,100% {
                bottom: 100%;
            }
        }
        .line {
            width: 100%; /* Adjust the width as needed */
            height: 1px; /* Adjust the height as needed */
            background-color: white; /* Set your desired color */
        }

        #form1 {
            height: 535px;
        }
     
    </style>
</head>
<body>
      <div class="login-box">
    <form id="form1" runat="server">
      
            <h2>Sign In</h2>
            <p>&nbsp;</p>
            <p>
                <asp:Label ID="lblMessage" runat="server" ForeColor="#FF3300"></asp:Label>
            </p>
            <div class="user-box">
                <asp:TextBox ID="inemail" runat="server" required=""></asp:TextBox>
                <label>Username</label><br /><br />
            </div>
            <div class="user-box">
                <asp:TextBox ID="inpass" runat="server" TextMode="Password" required=""></asp:TextBox>
                <label>Password</label><br /><br />
            </div>
              <a href="https://codepen.io/Marvelle/full/YzQqmGr">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
     <asp:Button ID="btin" runat="server" Text="Sign in" BackColor="#141E30" Height="40px" Width="114px" BorderStyle="None" ForeColor="White" />
           
    </a>
        <br /><br />

        <div class="line">
            <br />
            
            <asp:LinkButton ID="fgin" runat="server">Forgot Password</asp:LinkButton>
<asp:LinkButton ID="fgin2" runat="server">New User? Sign In</asp:LinkButton>
        </div>
             
          
    </form>
</div>
   
</body>
</html>
