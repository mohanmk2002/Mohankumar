<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UserLogin</title>
    <style>
        body
        {
            background-image: url(img7.jpg);
            color: white;

        }
        .box
        {
            width: 350px;
            height: 430px;
            position: absolute;
            top: 20%;
            left: 38%;
            backdrop-filter: blur(25px);
            border-radius: 20px;
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
            
        }
        .login
        {
            text-align: center;
            margin-top: 40px;
            font-family: cursive;
        }
        .int
        {
         text-align: center;
         padding-top: 10px;
        }
        .n1
        {
            width: 220px;
            border: 0px;
            outline: none;
            margin-top: 20px;
            background-color: transparent;
        }
        .h
        {
            text-align: center;
            width: 260px;
            margin-left: 45px;
            border:0.5px solid;
        }
        .png
        {
            width: 15px;
            margin: 0px;
        }
        .check
        {
            margin: 0px;
            margin-left: 45px;
            margin-right: 7px;
            accent-color: rgb(39, 9, 94);
            
        }
        .me
        {
            font-size: 14px;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        }
        .in:hover
        {
            background-color: white;
            color: black;
        }
        .in
        {
            margin-left: 80px;
            margin-top: 30px;
            padding: 7px;
            width: 180px;
            border-radius: 30px;
            color: white;
            border: 0px;
            font-family: cursive;
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
            
            padding: 10px;
            background-color: transparent;
            }
        .Register
        {
            text-align: center;
            font-size: 15px;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        }
        .regs
        {
            color: rgb(91, 17, 249) ;
            text-decoration: none;
        }
        a:hover
        {

        }
        ::placeholder
        {
            color: white;
        }
        button:hover
        {

        }
    </style>
</head>
<body>
    <div class="box">
        <h1 class="login">Login</h1>
        <div class="int">
            <form action="Userlogin" method="post">
            <input class="n1" type="text" name="n1" placeholder="Username">
            <img class="png" src="person.png" alt="png">
            <br><hr class="h"><br>
            <input class="n1" type="password" name="n2" placeholder="Password">
            <img class="png" src="lock.png" alt="lock">
            <br><hr class="h"><br>
        
        </div>
        <input class="check" type="checkbox"><label class="me" for="me">Remember Me</label><br>
        <button class="in">Login</button>
    </form>
        <div class="Register">
            <p>Don't have an account ?
                <a class="regs" href="UserReg.jsp">Register</a>
            </p>
        </div>
        

    </div>
</body>
</html>