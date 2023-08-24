<!DOCTYPE html>
<%@page import="com.model.Users"%>
<%@page import="com.controller.databaseConnection.db_connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%

// to get the value from the session using users module
Users user = (Users)session.getAttribute("users");



%>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="stylehere.css">
    
    <style>
    #image{
        border-radius: 0px;
        border-style: none;
        width: 90%;
        height: 450px;
    }

    .logo{
        display: flex;
        justify-content: space-between;
        width: 95%;
        margin: 0px auto;

    }
    .logo img{
        width: 150px;
        height: 150px;
    }
      .prada img{
        width: 225px;
      }  
    .dior img{
        width: 198px;
        height: 164px;
    }
    .logo-choose p{
        font-size: 24px;
        padding-left: 20px;
        margin: 20px 0 10px 0;
    }

    /* Navbar from session  */
    @import url('https://fonts.googleapis.com/css2 family=Montserrat:wght@500&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap');


    *{
        box-sizing: border-box;
        margin: 0;
        padding:0;
        
    }

    .hamrologo{
        font-family: 'Permanent Marker', cursive;
        color:#edf0f1;
        font-size: 25px;
    }

    li, a, button{
        font-family: "Monsserrat", sans-serif;
        font: weight 500px;
        font-size: 1rem;
        color:#edf0f1;
        text-decoration: none;
    }

    .hamroHeader{
        display:flex;
        justify-content: space-between;
        align-items: center;
        padding: 15px 3%;
        background-color: #5b5b8f;

    }


    .nav-linkshamro{
        list-style: none;
        
    }

    .nav-linkshamro li{
        display:inline-block;
        padding:0 20px;
    }

    .nav-linkshamro li a {
        transition: all 0.3s ease 0s;
    }

    .nav-linkshamro li a:hover{
        color:#35b4ae

    }



    /* Search bar */

    .search-box {
    width: 500px;
    position: relative;
    display: flex;
    bottom: 0;
    left: 0;
    right: 0;
    margin: 20px auto;
    }

    .search-input {
    width: 100%;
    font-family: 'Montserrat', sans-serif;
    font-size: 16px;
    padding: 15px 45px 15px 15px;
    background-color: #eaeaeb;
    color: #6c6c6c;
    border-radius: 6px;
    border:none;
    outline-style: none;
    
    transition: all .4s;
    }



    .search-btn {
    background-color: transparent;
    font-size: 18px;
    padding: 6px 9px;
    margin-left:-45px;
    border:none;
    color: #6c6c6c;
    transition: all .4s;
    z-index: 10;
    }

    .search-btn:hover {
    transform: scale(1.2);
    cursor: pointer;
    color: black;
    }

    /* Profile button   */
    .profile_button{
        padding:10px 40px 10px 20px;
        font-size : 0.9rem;
        background-color:rgb(196, 220, 229);
        border:none;
        border-radius:25px;
        cursor:pointer;
        color:black;
        font-weight:500;
        margin-left:10px;
        
    }
    .Logout_button{
        padding:10px 45px;
        font-size : 0.9rem;
        background-color:rgb(196, 220, 229);
        border:none;
        border-radius:25px;
        cursor:pointer;
        color:black;
        font-weight: 500;
        margin-left:10px;

    }
    .profile_image{
        border-radius: 50%;
        display:block;
        width:175px;
        height:175px;
        margin:5px auto;
        
    }

    /* session image div */
    .session{
    width:200px;
    position: relative;
    padding-left:50px;
    }
    .session_image{
    height:30px;
    width:30px;
    border-radius: 50%;
    cursor:pointer;
  

    }
    .session_imagediv{
    height:30px;
    width:30px;
    position:absolute;
    top:20px;
    right:55px;

    }
    </style>
</head>

<body>

    <% if (user == null){ %>
   <div class="nav">
        <header class="hamroHeader">
            
            <h3 class="hamrologo">Kunyo</h3>


            
            <div class = "nav-linkshamro">
                
        
                <ul class="nav-linkshamro">
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/ViewProducts?allProducts=display">Products</a></li>
                    <li><a href="#">About Us</a></li>

                    
                </ul>
            </div>
            
            <div class = "nav-linkshamro">
                
        
                <ul class="nav-linkshamro">

                    <li><a href="Login.jsp">Login</a></li>
                    <li><a href="SignUp.jsp">SignUp</a></li>
                    
                </ul>
            </div>            

        </header>
        <div class="nav-linkshamro" style ="position: absolute; left: 200px; top: 100px;">
        <ul class="main-menu">
            <li><a href="" style="color: black;"></a>
                <div class="sub-menu">
                    <h4>Category</h4>
                    <ul>
                        <li><a href="">link</a></li>
                        <li><a href="">link</a></li>
                        <li><a href="">link</a></li>
                        <li><a href="">link</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="" style="color: black;"></a>
                <div class="sub-menu">
                    <h4>Category</h4>
                    <ul>
                        <li><a href="">link</a></li>
                        <li><a href="">link</a></li>
                        <li><a href="">link</a></li>
                        <li><a href="">link</a></li>
                    </ul>
                </div>
            </li>
        </ul>
        </div>

      <div class="search-box">
        	<form action="${pageContext.request.contextPath}/ViewProducts" method="get" style=" width: 500px;position: relative;display: flex;bottom: 0;left: 0;right: 0;margin: 20px auto;">
	            <input class="search-input" type="text" placeholder="Search for your products" name="productName">
	            <button class="search-btn"><i class="fas fa-search"></i></button>
			</form>
        </div>
    </div>
    <%}else{ %>
   <div class="nav">
        <header class="hamroHeader">
            
            <h3 class="hamrologo">Kunyo </h3>


            
            <div class = "nav-linkshamro">
                
        
                <ul class="nav-linkshamro">
                    <li><a href="#">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/ViewProducts?allProducts=display">Products</a></li>
                    <li><a href="Carts.jsp">Carts</a></li>
                    <li><a href="Orders.jsp">Orders</a></li>
                    <li><a href="Profile.jsp">Profile</a></li>
                    
                </ul>
            </div>
           
            
	            <div class="nav-linkshamro">
	                <button class = "Logout_button"><a style="text-decoration:none; color:black;" href="${pageContext.request.contextPath}/Logout">Log Out</a> </button>
	            
	                <div class = "session_imagediv">
	                    <img  class = "session_image" src ="../image_users/<%=user.getImage_user() %>" alt = "user Profile pic">
	                </div> 
	            
	            </div>

        </header>
        <div class="nav-linkshamro" style ="position: absolute; left: 200px; top: 100px;">
        <ul class="main-menu">
            <li><a href="${pageContext.request.contextPath}/ViewProducts?displayMen=1" style="color: black;"></a>
                <div class="sub-menu">
                    <h4>Category</h4>
                    <ul>
                        <li><a href="">link</a></li>
                        <li><a href="">link</a></li>
                        <li><a href="">link</a></li>
                        <li><a href="">link</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="${pageContext.request.contextPath}/ViewProducts?displayWomen=2" style="color: black;"></a>
                <div class="sub-menu">
                    <h4>Category</h4>
                    <ul>
                        <li><a href="">link</a></li>
                        <li><a href="">link</a></li>
                        <li><a href="">link</a></li>
                        <li><a href="">link</a></li>
                    </ul>
                </div>
            </li>

            
        </ul>
        </div>

       <div class="search-box">
        	<form action="${pageContext.request.contextPath}/ViewProducts" method="get" style=" width: 500px;position: relative;display: flex;bottom: 0;left: 0;right: 0;margin: 20px auto;">
	            <input class="search-input" type="text" placeholder="Search for your products" name="productName">
	            <button class="search-btn"><i class="fas fa-search"></i></button>
			</form>
        </div>
    </div>
    <%} %>    
        

    </div> 

    <div class="header">
        <div class="product-type">
            <p>
            <b>New Arrivals</b>
            </p>
        </div>
    
    </div>
    <div class="products">
        <div class="product-design">
            <img src="https://tse4.mm.bing.net/th?id=OIP.Lp7swrv-YTHCDP9HRBZsbwHaJc&pid=Api&P=0" alt="">
            <h3>Drop Crotch Joggers</h3>
            <p>Joggers</p>
            <h4>Rs. 1200</h4>
        </div>

        <div class="product-design">
            <img src="https://sp.yimg.com/ib/th?id=OP.tDhIOmz6uWfYIg474C474&o=5&pid=21.1&w=160&h=105" alt="">
            <h3>Denim Jackets</h3>
            <p>Jackets</p>
            <h4>Rs. 5500</h4>
        </div>

         <div class="product-design">
            <img src="https://tse3.mm.bing.net/th?id=OIP.7tmqigWORYC_jn5ZVPcpMgHaHa&pid=Api&P=0" alt="">
            <h3>Cargo Pants </h3>
            <p>Pants</p>
            <h4>Rs. 3200</h4>
            
        </div>
    
    </div>
    <div class="header">
        <div class="product-type"><p>
            <b>Nike Essentials</b></p>
        </div>
    </div>

     <div class="products">
        <div class="product-design">
            <img src="https://tse1.mm.bing.net/th?id=OIP.1O0gEatuyr40CQJlOT6Q_QHaJj&pid=Api&P=0" alt="Men" style="height:500px"></a>
            <h4>Male</h4>
        </div>

        <div class="product-design">
            <img src="https://tse2.mm.bing.net/th?id=OIP.Mi5YoSRPQRsRhbTj6gKALAHaJb&pid=Api&P=0" alt="Women" style="height:500px"> </a>  
            <h4>Female</h4>  
        </div>

        <div class="product-design">
            <img src="https://images.squarespace-cdn.com/content/v1/57bafe29ff7c50e4a7ffbf67/1562840538122-JKAEZNDGU40561WZLHUX/IMG_0268_web.jpg" alt="kids" style="height:500px">
            <h4>Kids</h4>
        </div>
    </div> 
    <br>
    <br>
    
    
    <div>
        <div class="logo-choose">
            <p style="margin-left:15px;">
            <b>Brands</b>
            </p>
        </div>
    
        <div class="logo">

            <div class="dior">
                <a href="${pageContext.request.contextPath}/ViewProducts?brand=Nike"><img src="https://images.unsplash.com/photo-1617611413968-537a2ba4986d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmlrZSUyMGxvZ298ZW58MHx8MHx8&w=1000&q=80" alt=""></a>
                
            </div>
            <div class="dior">
                <a href="${pageContext.request.contextPath}/ViewProducts?brand=Versace"><img src="https://www.nicepng.com/png/detail/893-8931812_versace-versace-logo-png.png" alt=""></a>
                
            </div>
            <div class="dior">
                <a href="${pageContext.request.contextPath}/ViewProducts?brand=LuiVuitton"></a><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Louis_Vuitton_logo_and_wordmark.svg/800px-Louis_Vuitton_logo_and_wordmark.svg.png" alt=""></a>
            </div>
            <div class="dior">
                <a href="${pageContext.request.contextPath}/ViewProducts?brand=Armani"></a><img src="https://cdn.freebiesupply.com/logos/large/2x/emporio-armani-logo-png-transparent.png" alt=""></a>
            </div>
            <div class="dior">
                <a href="${pageContext.request.contextPath}/ViewProducts?brand=Gucci"></a><img src="https://www.pngmart.com/files/17/Vector-Gucci-Logo-Transparent-PNG.png" alt=""></a>
            </div>
    </div>
    <br>
    <br>
   

    </div>
    <footer class="footer">
        <div class="footer-part">
            <div class="all-footer">
                <div class="footer-col">
                    <h4>company</h4>

                </div>
                <div class="footer-col">
                    <h4>get help</h4>

                </div>
                <div class="footer-col">
                    <h4>online shop</h4>
               
                </div>
                <div class="footer-col">
                    <h4>follow us</h4>
             
                </div>
            </div>
        </div>
   </footer>
   <script src="./script.js"></script>
   <script src="java/gotop.js"></script>

</body>

</html>