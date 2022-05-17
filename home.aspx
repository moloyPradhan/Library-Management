<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'poppins' , sans-serif;
            
        }
        body{
            background-color:burlywood;
            background-image:linear-gradient(rgba(0, 0, 0, 0.7),rgba(0,0,0,0.7)),  url("img/i8.jpg");
            background-size: cover;
            background-position: center;
        }
        .container{
            width: 100%;
            height: 100vh;
            padding: 0 8%;
        }
        .container h1{
            text-align: center;
            padding-top: 4%;
            margin-bottom: 40px;
            font-weight: 600;
            position: relative;
            color: wheat;
            font-size: 50px;
            
        }

        .container h1::after{
            content:'';
            background: #303ef7;
            width: 360px;
            height: 5px;
            position: absolute;
            bottom: -5px;
            left: 50%;
            transform: translateX(-50%);
        }
        .row{
            display: grid;
            grid-template-columns: repeat(auto-fit,minmax(250px,1fr));
            grid-gap: 30px;
        }

        .service{
            text-align: center;
            padding: 25px 10px;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            background: transparent;
            transition: transform 0.5s , background 0.5s;
            border: 1px solid #303ef7;
            background-color: rgba(255, 228, 196, 0.6);
            
        }
      
        .service h2{
            font-weight: 600;
            margin-bottom: 8px;
        }
        .service:hover{
            background: #303ef7;
            color: #fff;
            transform: scale(1.05);
        }

        img{
            width: 30px;
        }
        a{
            text-decoration: none;
            color:blue;
            
        }
        .logout{
            text-align: center;
            padding: 25px 10px;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            background: transparent;
            transition: transform 0.5s , background 0.5s;
            border: 1px solid #303ef7;
            background-color: rgba(255, 228, 196, 0.6);
        }
        .logout h2{
            font-weight: 600;
            margin-bottom: 8px;
        }
        .logout:hover{
            background: red;
            color: #fff;
            transform: scale(1.05);
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">


    <div class="container">
        <h1><asp:Label ID="Label1" runat="server" class="container" Text="Label"></asp:Label></h1>
        <div class="row">
            <a href="StuAdd.aspx">
            <div class="service">
                <img src="img/user.png" alt="">
                <h2>Add Student </h2>
                <p>Insert Sudent data in Database</p>
            </div></a>
            <a href="Display.aspx">
            <div class="service">
                <img src="img/display.png" alt="">
                <h2>Display Students</h2>
                <p>Display all Student's Data</p>
            </div></a>
            <a href="Delete.aspx">
            <div class="service">
                <img src="img/search.png" alt="">
                <h2>Search / Delete Record</h2>
                <p>Search or Delete Student's Data</p>
            </div></a>
            <a href="UpdateStu.aspx">
            <div class="service">
                <img src="img/update.png" alt="">
                <h2>Update Student</h2>
                <p>Modify Student's Information</p>
            </div></a>
            <a href="BookAdd.aspx">
            <div class="service">
                <img src="img/book.png" alt="">
                <h2>Insert Book</h2>
                <p>Record Books Information</p>
            </div></a>
            <a href="DisplayBooks.aspx">
            <div class="service">
                <img src="img/book2.png" alt="">
                <h2>Display Books</h2>
                <p>Access All Books Detais</p>
            </div></a>
            <a href="DeleteBook.aspx">
            <div class="service">
                <img src="img/delete2.png" alt="">
                <h2>Search / Delete Books</h2>
                <p>Search ot Delete Books Record </p>
            </div></a>
            <a href="UpdateBook.aspx">
            <div class="service">
                <img src="img/update2.png" alt="">
                <h2>Modify Record</h2>
                <p>Update Details of Books</p>
            </div></a>
            <a href="IssueBook.aspx">
            <div class="service">
                    <img src="img/issue.png" alt="">
                    <h2>Issue Books</h2>
                    <p>Borrow a book </p>
            </div></a>
            <a href="history.aspx">
            <div class="service">
                    <img src="img/issue.png" alt="">
                    <h2>Transaction Books</h2>
                    <p>Record of previous transaction </p>
            </div></a>
            <a href="login.aspx">
            <div class="logout" onclick="logout_Click">
                    <img src="img/log-out.png" alt="">
                    <h2>Log Out</h2>
                    <p>Return to log in page</p>
            </div></a>
        </div>    
    </div>
    </form>
</body>
</html>
