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
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
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
            .body_navbar{
                display: flex;
                align-items: center;
                justify-content: space-between;  
                                
            }
            input{
                padding:10px;
            }
            .navitem_list{
                display: flex;
                align-items: center;
                gap: 10px;
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
                <div><input type= "text" placeholder="search...."/></div>
                <div class="navitem_list">
                    <p><span class="material-symbols-outlined">shopping_cart</span>Card</p>
                    <p><span class="material-symbols-outlined">inventory</span>Order</p>
                    <p><span class="material-symbols-outlined">person</span>Account</p>
                
                </div>
            </div>
            
        </div>
    </body>
</html>
