<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background-color: orange;
            background-image:linear-gradient(rgba(0, 0, 0, 0.8),rgba(0,0,0,0.8)),  url("img/i5.jpg");
            background-size: cover;
            background-position: center;
       
        }
        
        .search-delete{
            width: 250px;
            padding: 20px;
            margin: 6% auto 0;
            text-align: center;
            border-radius: 20px;
            border: 2px solid orange;
            background-color:rgba(0,0,0,0.6);
        }
       
        
        .input-box{
            border-radius: 30px;
            padding: 10px;
            margin: 10px 0;
            width: 90%;
            border: 1px solid yellow;
            outline: none;
            background-color: transparent;
            color: yellow;
            font-size: 15px;
        }
        .input-box::placeholder{
            color: yellow;
        }
     
        .search-btn
        {
            width: 100%;
            padding: 10px;
            border-radius: 30px;
            font-size: 15px;
            margin: 10px 0;
            border:none;
            outline:none;
            cursor: pointer;
            transition: 0.6s ease;
            background-color: transparent;
            color: cyan;
            border:1px solid cyan
        }
        .search-btn:hover{
            background-color: cyan;
            color: #000;
        }
        .delete-btn{
            background-color: transparent;
            color: red;
            border:1px solid red;
        }
        .delete-btn:hover{
            background-color: rgb(221, 66, 66);
            color: #000;
            font-weight: 500;
        }
        img{
            width: 90px;
            margin-top:-60px;
        }
        .or{
            color:yellow;
        }
        span
        {
         color:#fff;   
        }
        a
        {
         text-decoration:none;
         color:wheat;   
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="search-delete">
        <img src="img/user2.png" alt="">
    
                    <asp:TextBox ID="name" runat="server" class ="input-box" placeholder="Enter Full Name"></asp:TextBox>
                
                    <asp:TextBox ID="uname" runat="server" class ="input-box" placeholder="Enter Username"></asp:TextBox>
                
                    <asp:TextBox ID="mail" runat="server" class ="input-box" placeholder="Email ID"></asp:TextBox>
               
                    <asp:TextBox ID="pwd" runat="server" class ="input-box" placeholder="Enter Password"></asp:TextBox>
                
                    <asp:TextBox ID="cpwd" runat="server" class ="input-box" placeholder="Confirm Password"></asp:TextBox>
                
                    
                    <asp:Button ID="signin" runat="server" class="search-btn" onclick="signin_Click" Text="Sign In" />
                
    
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <span>already a user ? </span>
        <asp:HyperLink ID="login" runat="server" NavigateUrl="~/login.aspx">Log in</asp:HyperLink>
                
    
    </div>
    </form>
</body>
</html>
