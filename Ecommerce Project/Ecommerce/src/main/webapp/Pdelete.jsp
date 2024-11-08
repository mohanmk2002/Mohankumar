<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ProductDelete</title>
    <style>
        body
        {
            background-image: url(img8.jpg);
        }
        .box
        {
            max-width: 500px;
            height: 300px;
            margin: auto;
            border-radius: 15px;
            margin-top: 150px;
            background-image: url(box.gif);
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        }
        .head
        {
            text-align: center;
            color: white;
            margin: auto;
            padding-top: 30px;
            font-family: cursive;
        }
        form
        {
            padding-left: 90px;
            margin: 60px;
        }
        label
        {
            color: white;
            font-size: 20px;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        }
        input
        {
            outline: none;
            border-radius: 5px;
            width: 60px;
            height: 20px;
        }
        .del
        {
            background-color: transparent;
            color: rgb(9, 52, 98);
            padding: 10px;
            width: 100px;
            border-radius: 30px;
            border: 0px;
            float: right;
            margin-top: 60px;
            font-family: cursive;
            font-size: 16px;
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        }
        .del:hover
        {
            background-color: white;
        }
    </style>
</head>
<body>
    <div class="box">
        <h1 class="head">Product Delect</h1>
        <div>
            <form action="Pdelete" method="post">
                <label for="name">Product Id :</label>
                <input type="text" name="n1"><br><br>
                <button class="del">Delete</button>
            </form>
        </div>
    </div>
</body>
</html>