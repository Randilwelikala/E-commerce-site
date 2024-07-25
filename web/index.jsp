<%-- 
    Document   : index
    Created on : Jul 1, 2024, 11:00:24 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>store</title>
        <style>
            *{
                margin:0;
                padding: 0;
                box-sizing: border-box;
            }
            .top_bar{
                background-color: green;
                width:100vw;
                padding: 10px 20px;
                color: white;
                display: flex;
                align-items: center;
                justify-content: space-between;                    
                
            }
            .top_bar > .second {
                display: flex;
                gap:10px;
            }
            .main{
                padding: 40px 80px
            }
        </style>
    </head>
    <body>
        <div class="top_bar">
            <div>079079</div>
            <div class="second">
                
                <p>Eng</p>
                <p>Country</p>
            </div>
        </div>   
        <div class="main">
            <div class = "body_navbar">
                <input type= "text" placeholder="search...."/>
            </div>
            <div>element</div>
        </div>
    </body>
</html>
