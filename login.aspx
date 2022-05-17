<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login form</title>
    <style>
        body{
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background-color: #000;
            background-image:linear-gradient(rgba(0, 0, 0, 0.8),rgba(0,0,0,0.8)),  url("img/i5.jpg");
            background-size: cover;
        }
        .sign-up-form{
            width: 250px;
            background-color:rgba(0,0,0,0.6);
            padding: 20px;
            margin: 10% auto 0;
            text-align: center;
            border-radius: 20px;
            border: 1px solid wheat;
        }
        .sign-up-form h1{
            color: #1c8adb;
            margin-bottom: 30px;
        }
        .input-box{
            border-radius: 10px;
            padding: 10px;
            margin: 10px 0;
            width: 90%;
            border: 1px solid wheat;
            outline: none;
            background-color: transparent;
            color: wheat;
            font-size: 15px;
        }
        .input-box::placeholder{
            color: wheat;
        }
       
        .signup-btn{
            background-color: transparent;
            border:1px solid wheat;
            color: wheat;
            width: 100%;
            padding: 10px;
            border-radius: 10px;
            font-size: 15px;
            margin: 10px 0;
            outline:none;
            cursor: pointer;
            transition: 0.6s ease;
        }
        .signup-btn:hover{
            background-color: wheat;
            color: #000;
        }
        a{
            text-decoration: none;
            color:orange;
        }
       
        img{
            width: 90px;
            margin-top:-60px;
        }
        p{
            color: wheat;
            font-size: 15px;
        }
        .remember{
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="sign-up-form">
 <img src="img/user2.png" alt="">

    <form id="form1" runat="server">
            <br />

            <asp:TextBox ID="TextBox1" runat="server" class ="input-box" placeholder="Username"></asp:TextBox>

            <asp:TextBox ID="TextBox2" runat="server" type="password" class ="input-box" placeholder="Password"></asp:TextBox>

            <p><span><label class="remember"><input type="checkbox" name="" id=""> Remember me into this device </label></span></p>
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" class ="signup-btn" onclick="Button1_Click" Text="Log In" />
        </p>
        <p>Do you have an account ? <a href="signup.aspx">Register</a></p>
    </form>
    </div>
</body>
</html>
