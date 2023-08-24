<%@page import="com.controller.user.NameFromID"%>
<%@page import="com.model.Orders"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%
  List<Orders> orders = (List<Orders>) request.getAttribute("orders");
%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="View Admin/styleAdmin.css">
     
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="stylesheet" href="apexcharts.css">
    <title>Admin Dashboard Panel</title>
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
                <li><a href="View Admin/homeAdmin.jsp">
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
                <li><a href="View Admin/addProducts.jsp">
                    <i class="uil uil-chart"></i>
                    <span class="link-name">Add Products</span>
                </a></li>
                <li><a href="View Admin/addBrands.jsp">
                    <i class="uil uil-chart"></i>
                    <span class="link-name">Add Brand</span>
                </a></li>
                <li><a href="View Admin/addCategory.jsp">
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
                    <span class="text">Orders</span>
                </div>

                <div class="boxes">
                    <div class="orders">
                        <h2>Orders List</h2>
                        <table>
                          <thead>
                            <tr>
                              <th>Order ID</th>
                              <th>Customer Name</th>
                              <th>Order Date</th>
                              <th>Order Total</th>
                              <th>Actions</th>
                            </tr>
                          </thead>
                          <tbody>
                            <%
					NameFromID ni= new NameFromID();
					for (Orders order: orders){
					%>
				      <tr>
				        <td><%=order.getOrder_id()%></td>
				        <td><%=ni.getUserName(order.getUser_id())%></td>
				        <td><%=order.getOrder_date()%></td>
				        <td>Rs <%=order.getTotal_amount()%></td>
				        <td><button class="Status" style="width:100px; background-color:#0E4BF1; height:40px; border-radius:20px;color:white">Edit</button></td>
				      </tr>
				   
				<% 
					}
				%>
                        </table>
                    </div>                      
                </div>
            </div>
        </div>
    </section>
    <script src="View Admin/script.js"></script>
    
    </body>
    </html>
