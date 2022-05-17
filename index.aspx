<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>index page</title>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        .logo img {
            width: 88px;
            padding: 0 25px;
        }
        
        header{
            background-color:rgba(255, 255, 255, 0.486);
            height: 100vh;
            background-image:linear-gradient(rgba(0, 0, 0, 0.8),rgba(0,0,0,0.8)), url("img/i2.jpg");
            background-size:cover;
              
        }
        ul{
            list-style-type: none;
            float: right;
            margin-top: 25px;
        }
        ul li{
            display: inline-block;
        }
        ul li a{
            text-decoration: none;
            color: wheat;
            padding: 5px 20px;
            border: 1px solid transparent;
            border-radius: 0px;
            
        }
        ul li a:hover{
            background-color: wheat;
            color: black;
            transition: 0.6s ease;
        }
        .logo{
            float: left;
            width: 100px;
            height: auto;
            color:wheat;
            margin-top: 20px;
        }
        .main{
            max-width: 1200px;
            margin: auto;
        }
        ul li.active a{
            background-color: wheat;
            color: black;
        }
        .location{
            position: absolute;
            top: 30%;
            left: 47%;
            transform: translate(-50% ,-50%);
            color: wheat;
            font-size: 20px;           
        }
        .location img.icon{
            width: 20px;            
        }
        
        .title{
            position: absolute;
            top: 40%;
            left: 50%;
            transform: translate(-50% ,-50%);
        }
        .info{
            position: absolute;
            top: 55%;
            left: 54%;
            transform: translate(-50% ,-50%);
        }
        h1{
            font-size: 70px;
            color: wheat;
        }
        p{
            font-size: 20px;
            color: wheat;
        }
        .button{
            position: absolute;
            top: 70%;
            left: 50%;
            transform: translate(-50% ,-50%);
        }
        .btn{
            border: 1px solid wheat;
            padding: 10px 30px;
            color:wheat;
            border-color: wheat;
            text-decoration: none;
            transition: 0.6s ease;
        }
        .btn:hover{
            background-color: wheat;
            color: black;
        }
        footer{
            height: 10vh;
            background-color: black;
            color: wheat;
        }
        .center{
            
            justify-content: center;
            align-items: center;
        }
        .social{
            margin-left: 5px;
            margin-right: 5px;
            position: absolute;
            top: 85%;
            left: 50%;
            transform: translate(-50% ,-50%);
            color: wheat;
            
        }
        .social img{
            width: 25px;
            margin-left: 5px;
            margin-right: 5px;
        }
        
        .credit{
            position: absolute;
            top: 95%;
            left: 50%;
            transform: translate(-50% ,-50%);
            color: wheat;

        }
        .credit p{
            font-size: 20px;
        }
    
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <header>
       <div class="main">
           <div class="logo">
               <h2>[RKMSCC]</h2>
           </div>
           <ul>
               <li class="active"><a href="#">Home</a></li>
               <li><a href="#">About</a></li>
               <li><a href="#">Contact</a></li>
               <li><a href="#">Feedback</a></li>
           </ul>
       </div>
       <div class="location">
           <img src="img/placeholder.png" class="icon">Kolkata , India  &nbsp&nbsp&nbsp
           <img src="img/hourglass.png" class="icon">Everyday : 9 a.m To 5 p.m
       </div>
       <div class="title">
           <h1>National Library</h1>
       </div>
       <div class="info">
           <p>The National Library, foremost among the libraries in India,
            is one of the four designated libraries entitled to receive under 
            the Delivery of Books and Newspapers (Public Libraries) Act, 1954 
            a copy of every publication published anywhere in the country.</p>
       </div>
       <div class="button">
           <a href="login.aspx" class ="btn">Log In</a>
           <a href="signup.aspx" class ="btn">Register</a>
       </div>
       <div class="social">
           <img src="img/fb.png" alt="facebook">
           <img src="img/you.png" alt="youtube">
           <img src="img/twi.png" alt="twitter">
           <img src="img/ins.png" alt="instagram">
       </div>
       <div class="credit">
           <p>Copyright &copy;Moloy_Pradhan</p>
       </div>
    </header>        
    </form>                   
</body>
</html>
