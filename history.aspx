<%@ Page Language="C#" AutoEventWireup="true" CodeFile="history.aspx.cs" Inherits="history" %>

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
            margin: 6% auto 0;
            text-align: center;
            border-radius: 10px;
            
            margin-left: 1%;
            margin-right: 1%;
        }
        
        
        .home-btn
        {
            width: 25%;
            padding: 10px;
            border-radius: 30px;
            font-size: 15px;
            margin: 10px 0;
            outline:none;
            cursor: pointer;
            transition: 0.6s ease;
            background-color: rgb(6, 101, 245);
            color: tranparent;
            border:1px solid rgb(6, 101, 245);
        }
         .home-btn:hover
         {
             border:1px solid rgb(245, 22, 6) ;
             background-color: rgb(245, 22, 6);     
         }
         
         h1
         {
             color:#fff;
         }
         </style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="record">
    <h1>Display All Transactions</h1>
    
        <asp:GridView ID="GridView1" runat="server" ForeColor="White" Width="1300px">
        </asp:GridView>
    <br />
        <asp:Button ID="home" runat="server" Text="Back To DashBoard"  class="home-btn" onclick="home_Click" />
   
    </div>
    </form>
</body>
</html>
