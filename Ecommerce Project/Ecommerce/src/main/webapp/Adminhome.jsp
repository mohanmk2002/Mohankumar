<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AdminHome</title>
    <style>
        body
        {
            background-image: url(img5.jpg
            );
        }
        nav,ul,li,h3
        {
            display: inline;
        }
        img
        {
            width: 20px;
        }
        .box
        {
            padding: 30px;
            color: white;
            backdrop-filter: blur(10px);
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;
        }
        li
        {
            padding: 10px;
        }
        ul
        {
            margin-left: 150px;
        }
        h3
        {
            margin-left: 10px;
            font-family: Georgia, 'Times New Roman', Times, serif;
        }
       a:hover 
       {
        font-size: 12 px;
        color: blue ;
       }
       a
       {
        color: white;
        text-decoration: none;
       }
       .search
       {
        border: 0px;
        padding: 5px;
        border-radius: 30px;
        margin-left: 100px;
       }
       .logout
       {
        background-color: transparent;
        width: 80px;
        border: 0px;
        margin-left: 10px;
        color: white;
        border-radius: 30px;
       }
    </style>
</head>
<body>
    <div class="box">
            <h3>Ecommerce</h3>
            <nav class="navbar">
            <ul>
                <li><a href="Padd.jsp">Product Add</a> </li>
                <li><a href="Pdelete.jsp">Product Delete</a> </li>
                <li><a href="Pupdate.jsp">Product Update</a> </li>
                <li><a href="Pdetails.jsp">Product Details</a> </li>
                <li><a href="Udetails.jsp">User Details</a> </li>
                <li><a href="Odetails.jsp">Order Details</a> </li>
            </ul>
            <input class="search" type="text" placeholder="Search *">
            <button class="logout"><a href="Adminlogin.jsp">Logout</a></button>
        </nav>
    </div>
</body>
</html>