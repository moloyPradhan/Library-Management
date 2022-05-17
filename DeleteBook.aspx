<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteBook.aspx.cs" Inherits="DeleteBook" %>

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
            background-image:linear-gradient(rgba(0, 0, 0, 0.8),rgba(0,0,0,0.8)),  url("img/i3.jpg");
            background-size: cover;
            background-position: center;
       
        }
        .record{
            width: auto;
            padding: 20px;
            margin: 6% auto 0;
            text-align: center;
           
        }
        .search-delete{
            width: 250px;
            padding: 20px;
            margin: 6% auto 0;
            text-align: center;
            border-radius: 20px;
            border: 2px solid orange;
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
        button{
            
           
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
        .delete-btn
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
            color: red;
            border:1px solid red;
        }
        .delete-btn:hover{
            background-color: rgb(247, 7, 7);
            color: #000;
        }
        img{
            width: 90px;
            margin-top:-60px;
        }
        .or{
            color:yellow;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div class="search-delete">
        <img src="user2.png" alt="">
        <br />
        <asp:TextBox ID="TextBox1" runat="server" class ="input-box" placeholder="Enter ISBN"></asp:TextBox>
        <asp:Button ID="search" runat="server" Text="Search" class="search-btn" onclick="search_Click" />
        <div class="or">OR</div>
        <asp:Button ID="del" runat="server" Text="Delete" class="delete-btn" onclick="del_Click" />
     </div>
     <div class="record">
        <asp:GridView ID="GridView1" runat="server" Width="1300px" ForeColor="White" 
             GridLines="Horizontal" Height="150px">
                    </asp:GridView>
                    <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
     </div>
                
                    
 
    </form>
</body>
</html>
