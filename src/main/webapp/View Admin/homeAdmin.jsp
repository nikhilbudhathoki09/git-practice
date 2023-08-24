<%@page import="com.model.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% Users user = (Users) session.getAttribute("users"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="styleAdmin.css">
     
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <title>Admin Dashboard Panel</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Poppins');

        * {
        font-family: 'Poppins', sans-serif;
        }

        #chart {
        max-width: 760px;
        margin: 35px auto;
        opacity: 0.9;
        }

        #timeline-chart .apexcharts-toolbar {
        opacity: 1;
        border: 0;
        }


    </style>
</head>
<body>
    <nav>
        <div class="logo-name">
            <div class="logo-image">
               <img src="images/logo.png" alt="">
            </div>

            <span class="logo_name">Kunyo</span>
        </div>

        <div class="menu-items">
            <ul class="nav-links">
                <li><a href="homeAdmin.jsp">
                    <i class="uil uil-estate"></i>
                    <span class="link-name">Dash-board</span>
                </a></li>
                <li><a href="${pageContext.request.contextPath}/AdminOrders">
                    <i class="uil uil-chart"></i>
                    <span class="link-name">Orders</span>
                </a></li>
                <li><a href="${pageContext.request.contextPath}/AdminProducts">
                    <i class="uil uil-files-landscapes"></i>
                    <span class="link-name">All Products</span>
                </a></li>
                <li><a href="addProducts.jsp">
                    <i class="uil uil-chart"></i>
                    <span class="link-name">Add Products</span>
                </a></li>
                <li><a href="addBrands.jsp">
                    <i class="uil uil-chart"></i>
                    <span class="link-name">Add Brand</span>
                </a></li>
                <li><a href="addCategory.jsp">
                    <i class="uil uil-chart"></i>
                    <span class="link-name">Add Category</span>
                </a></li>
            </ul>
            
            <ul class="logout-mode">
                <li><a href="${pageContext.request.contextPath}/Logout">
                    <i class="uil uil-signout"></i>
                    <span class="link-name">Logout</span>
                </a></li>

                <li class="mode">
                    <a href="#">
                        <i class="uil uil-moon"></i>
                    <span class="link-name">Dark Mode</span>
                </a>

                <div class="mode-toggle">
                  <span class="switch"></span>
                </div>
            </li>
            </ul>
        </div>
    </nav>

    <section class="dashboard">
        <div class="top">
            <i class="uil uil-bars sidebar-toggle"></i>

            <div class="search-box">
                <i class="uil uil-search"></i>
                <input type="text" placeholder="Search here...">
            </div>
            
            <!--<img src="images/profile.jpg" alt="">-->
        </div>

        <div class="dash-content">
            <div class="overview">
                <div class="title">
                    <i class="uil uil-tachometer-fast-alt"></i>
                    <span class="text">Dashboard</span>
                </div>

                <div class="boxes">
                    <div class="box box1">
                        <i class="uil uil-thumbs-up"></i>
                        <span class="text">Total Reviews</span>
                        <span class="number">5000</span>
                    </div>
                    <div class="box box2">
                        <i class="uil uil-comments"></i>
                        <span class="text">Notifications</span>
                        <span class="number">113</span>
                    </div>
                    <div class="box box3">
                        <i class="uil uil-share"></i>
                        <span class="text">Shares</span>
                        <span class="number">89</span>
                    </div>
                </div>
            </div>

            <div class="activity">
                <div class="title">
                    <i class="uil uil-clock-three"></i>
                    <span class="text">Clients</span>
                </div>

                <div class="activity-data">
                    <div class="data names">
                        <span class="data-title">Name</span>
                        <span class="data-list">Prem Shahi</span>
                        <span class="data-list">Deepa Chand</span>
                        <span class="data-list">Manisha Chand</span>
                    </div>
                    <div class="data email">
                        <span class="data-title">Email</span>
                        <span class="data-list">premshahi@gmail.com</span>
                        <span class="data-list">deepachand@gmail.com</span>
                        <span class="data-list">prakashhai@gmail.com</span>
                    </div>
                    <div class="data joined">
                        <span class="data-title">Joined</span>
                        <span class="data-list">2022-02-12</span>
                        <span class="data-list">2022-02-12</span>
                        <span class="data-list">2022-02-13</span>
                    </div>
                    <div class="data type">
                        <span class="data-title">Type</span>
                        <span class="data-list">New</span>
                        <span class="data-list">Member</span>
                        <span class="data-list">Member</span>
                    </div>
                    <div class="data status">
                        <span class="data-title">Status</span>
                        <span class="data-list">Liked</span>
                        <span class="data-list">Liked</span>
                        <span class="data-list">Liked</span>
                    </div>
                </div>
            </div>

            <div id="chart">
                <div id="timeline-chart"></div>
            </div>
        </div>
        </div>
    </section>
    <script src="script.js"></script>

</body>
</html>