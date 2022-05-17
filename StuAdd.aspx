<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StuAdd.aspx.cs" Inherits="StuAdd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        body{
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background-color: black;
            background-image:linear-gradient(rgba(0, 0, 0, 0.8),rgba(0,0,0,0.8)),  url("img/i3.jpg");
            background-size: cover;
       
        }
        .insert{
            width: 250px; 
            padding: 20px;
            margin: 5% auto 0;
            text-align: center;
            border-radius: 20px;
            border: 1px solid green;
        }
       
        
        .input-box{
            border-radius: 10px;
            padding: 10px;
            margin: 10px 0;
            width: 90%;
            border: 1px solid green;
            outline: none;
            background-color: transparent;
            color: green;
            font-size: 15px;
        }
        .input-box::placeholder{
            color: green;
        }
        
        .insert-btn{
            background-color:transparent ;
            color: rgb(7, 247, 7);
            border:1px solid green;
            width: 100%;
            padding: 10px;
            border-radius: 10px;
            font-size: 15px;
            margin: 10px 0;
            outline:none;
            cursor: pointer;
            transition: 0.6s ease;
        }
        .insert-btn:hover{
            background-color:rgb(7, 247, 7);
            color: #000;
        }
        img{
            width: 90px;
            margin-top:-60px;
        }
    </style>
</head>
<body>
<div class="insert">
        <img src="img/user2.png" alt="">
    <form id="form1" runat="server">
    <br/>
    <asp:TextBox ID="Textid" runat="server" class ="input-box" placeholder="Enter ID"></asp:TextBox>
    <asp:TextBox ID="Textname" runat="server" class ="input-box" placeholder="Enter Name"></asp:TextBox>
    <asp:TextBox ID="Textmail" runat="server" class ="input-box" placeholder="Enter Email"></asp:TextBox>
    <asp:TextBox ID="Textmobile" runat="server" class ="input-box" placeholder="Mobile Number"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" class="insert-btn" onclick="Button1_Click" Text="Insert Record" />
    <asp:Label ID="Label1" runat="server" ForeColor="#00CCFF"></asp:Label>
               
    </form>
    </div>
</body>
</html>
