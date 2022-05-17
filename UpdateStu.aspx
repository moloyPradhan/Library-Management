<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateStu.aspx.cs" Inherits="UpdateStu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         body{
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background-color: orange;
            background-image:linear-gradient(rgba(0, 0, 0, 0.8),rgba(0,0,0,0.8)),  url("img/i3.jpg");
            background-size: cover;
            background-position: center;
            align-items:center;
       
        }
        .record{
            width: auto;
            padding: 20px;
            margin: 0% auto 0;
            text-align: center;
            border-radius: 10px;
           
            margin-left: 2%;
            
            margin-right: 2%;
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
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div class="search-delete">
    <img src="img/user2.png" alt="">
    <asp:MultiView ID="MultiView1" runat="server">
     
        <asp:View ID="View1" runat="server">
            
                        <br /><br />
                    
                        <asp:TextBox ID="TextBox1" runat="server" class ="input-box" placeholder="Enter Student ID"></asp:TextBox>

                        <asp:Button ID="edit" runat="server" class="search-btn" onclick="edit_Click" Text="Edit" />

                        <asp:Button ID="home" runat="server" class="search-btn" Text="Home" 
                            onclick="home_Click" />
                    
        </asp:View>
        <asp:View ID="View2" runat="server">
            
                        <asp:TextBox ID="Textname" runat="server" class ="input-box" placeholder="Enter Name"></asp:TextBox>
                    
                    
                        <asp:TextBox ID="Textmail" runat="server" class ="input-box" placeholder="Enter Email"></asp:TextBox>
                    
                        <asp:TextBox ID="Textmobile" runat="server" class ="input-box" placeholder="Mobile Number"></asp:TextBox>
                    
                        
                   
                        <asp:Button ID="modify" runat="server" class="search-btn" onclick="modify_Click" Text="Update Record" />

                        <asp:Button ID="back" runat="server" class="search-btn" Text="Back" 
                            onclick="back_Click" />
             
             
            
                
            
        </asp:View>
        
    </asp:MultiView>
    </div>
    <div class="record">
     <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label><br /><br />
             <asp:GridView ID="GridView1" runat="server" Width="1300px" 
            ForeColor="White" Height="60px">
            </asp:GridView>
    </div>

    </form>
        
</body>
</html>
