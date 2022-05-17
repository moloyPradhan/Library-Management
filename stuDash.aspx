<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stuDash.aspx.cs" Inherits="stuDash" %>

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
            align-items:center;
       
        }
        .record{
            width: auto;
            padding: 20px;
            margin: 6% auto 0;
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
            border:1px solid white;
            
        }
             
        
        .input-box{
            border-radius: 30px;
            padding: 10px;
            margin: 10px 0;
            width: 90%;
            border:1px solid white;
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
        h1
        {
         color:white;   
         font-size:30px;
         font-family:Sans-Serif;
        }
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
            

          
            <asp:MultiView ID="MultiView1" runat="server">

                <asp:View ID="View1" runat="server">
                <div class="record">
                <h1><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1><br /><br />
                    <asp:GridView ID="GridView1" runat="server" ForeColor="White" Width="1300px">
                    </asp:GridView>
                    </div>
                    <div class="search-delete">

                     

                    <asp:Button ID="edit" runat="server" class="search-btn" Text="Edit" 
                            onclick="edit_Click" />

                        <asp:Button ID="logout" runat="server" class="search-btn" Text="Logout" 
                            onclick="logout_Click1" />
                        <asp:Button ID="hist" runat="server" class="search-btn" Text="History" 
                            onclick="hist_Click" />
                    </div>
                </asp:View>

                

                <asp:View ID="View2" runat="server">
                <div class="search-delete">
                    <asp:TextBox ID="TextBox1" runat="server" class ="input-box" placeholder="Enter Full Name"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" class ="input-box" placeholder="Enter Email"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" class ="input-box" placeholder="Mobile Number"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" class ="input-box" placeholder="Username"></asp:TextBox>
                    <asp:TextBox ID="TextBox5" runat="server" class ="input-box" placeholder="Password"></asp:TextBox>

                    <asp:Button ID="modify" runat="server" class="search-btn" Text="Modify" 
                        onclick="modify_Click" />
                    <asp:Button ID="return" runat="server" class="search-btn" Text="Return" 
                        onclick="return_Click" />
                   </div>
                </asp:View>

                <asp:View ID="View3" runat="server">
                <div class="record">
                    <asp:GridView ID="GridView2" runat="server" ForeColor="White" Width="1300px">
                    </asp:GridView>
                    </div>
                    <div class="search-delete">
                        <asp:Button ID="first" runat="server" class="search-btn" Text="Back" 
                            onclick="first_Click" />
                    </div>
                </asp:View>
        </asp:MultiView>
            
            
            
    </form>
</body>
</html>
