<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookAdd.aspx.cs" Inherits="BookAdd" %>

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
        button{
            
            
        }
        .insert-btn
        {
            width: 100%;
            padding: 10px;
            border-radius: 10px;
            font-size: 15px;
            margin: 10px 0;
            border:none;
            outline:none;
            cursor: pointer;
            transition: 0.6s ease;
            background-color: transparent;
            color: green;
            border:1px solid green;
        }
        .insert-btn:hover{
            background-color: rgb(7, 247, 7);
            color: #000;
        }
        img{
            width: 90px;
            margin-top:-60px;
            border-radius: 50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="insert">
        <img src="img/bok.png" alt="">
    
        
                    <asp:TextBox ID="bookName" runat="server" class ="input-box" placeholder="Enter Book Name"></asp:TextBox>
              
                    <asp:TextBox ID="bookCat" runat="server" class ="input-box" placeholder="Book Category"></asp:TextBox>
               
                    <asp:TextBox ID="bookAuth" runat="server" class ="input-box" placeholder="Author Name"></asp:TextBox>
                
                    
                    <asp:TextBox ID="isbn" runat="server" class ="input-box" placeholder="ISBN"></asp:TextBox>
               
                    <asp:TextBox ID="bookprice" runat="server" class ="input-box" placeholder="Book Price"></asp:TextBox>
                
                    
                
                    <asp:Button ID="addbook" runat="server" class="insert-btn" onclick="addbook_Click" 
                        Text="Insert Record" />

                        <asp:Label ID="Label1" runat="server"></asp:Label>

    </div>
    </form>
</body>
</html>
