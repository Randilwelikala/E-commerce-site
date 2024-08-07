<%-- 
    Document   : index
    Created on : Jul 1, 2024, 11:00:24 PM
    Author     : Acer
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
        <title>store</title>
        <style>
            body{
                font-family: "Poppins", sans-serif;
            }
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
                width: 400px;
            }
            .navitem_list{
                display: flex;
                align-items: center;
                gap: 20px;
            }
            .navitem_list p{
                display: flex;
                align-items: center;
                gap: 5px;
            }
            .adds{
                background: yellow;
                height:30vh;
                margin-top: 30px;
                border-radius: 14px;
                display: flex;
                align-items: center;
                justify-content: space-between;
            }
            .add_image{
                height: 29vh;
            }
            button{
                background: black;
                color: white;
                font-weight: bold;
                padding:10px;
            }
            .add_left{
                padding: 20px;
            }
            .products{
                display: grid;
                grid-template-columns: 20% 20% 20% 20%;
                justify-content: space-between;
            }
            .product{
                margin-top : 20px;
                background: graytext;
                width: 100%;
                height: 250px;
                padding: 20px
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
            <div class ="adds">
                <div class="add_left">
                    <h1>Grab up to 50% off On <br> selected headphones</h1>
                    <button>Buy Now</button>
                </div>
                
                
                                 
                <div>
                    <image class ="add_image" src="https://www.pngall.com/wp-content/uploads/2016/06/Ecommerce-Transparent.png" alt="miss the image "/>
                
                </div>
                
            </div>
            <br>
            <h3>Headphones for you!</h3>
            <divb class ="products">
                
                <c:forEach var="oneproduct" items="${allproduct}">
                    <div class ="product">
                        <h2 id ="name"><c:out value="${oneproduct.name}"/></h2>
                        <h2 id="price"><c:out value="${oneproduct.price}"/></h2>
                        <button id="add_button">Add</button>
                    </div>
                </c:forEach>                           
                
            </divb>
            <button id="showcart">show cart</button>
            <div id="cart">
                
            </div>
        </div>
        <script>
            var products = document.querySelectorAll('.product');
            var showcart = document.querySelector('#showcart');
            var cart = document.querySelector('#cart');
            var cartlist = [];
            products.forEach( (product) => {
                product.addEventListener('click',()=>{
                    var p_name =product.querySelector('#name').innerText;
                    var p_price =product.querySelector('#price').innerText;
                    
                    var projectobj={
                        name: p_name,
                        price: p_price
                    };
                    cartlist.push(projectobj);
                });                    
                
            });
            showcart.addEventListener('click',()=>{
                console.log(cartlist);
                cart.innerHTML='';
                cartlist.forEach(item=>{
                    console.log("loop");
                    
                    const itemElement=document.createElement('div');
                    console.log(item.name);
                    itemElement.textContent = item.name +"   /   "+ item.price;
                    cart.appendChild(itemElement);
                    
                })
            
            });
            
            
            
        </script>
    </body>
</html>
