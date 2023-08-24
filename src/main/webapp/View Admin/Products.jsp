<%@page import="com.controller.user.NameFromID"%>
<%@page import="com.model.Products"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
  List<Products> products = (List<Products>) request.getAttribute("products");
%>
<!DOCTYPE html>
<html>
<head>
	<title>All Products</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="View Admin/styleAdmin.css">
     
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <title>All Products</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f2f2f2;
		}

		h1 {
			text-align: center;
			margin-top: 50px;
			color: #333333;
		}

		table {
			margin: auto;
			margin-top: 30px;
			border-collapse: collapse;
			width: 90%;
			background-color: #ffffff;
			box-shadow: 0px 5px 10px rgba(0,0,0,0.1);
		}

		th, td {
			padding: 12px;
			text-align: center;
		}

		tr:nth-child(even) {
			background-color: #f2f2f2;
		}

		.btn {
			display: inline-block;
			padding: 8px 16px;
			background-color: #008CBA;
			color: #ffffff;
			text-align: center;
			font-size: 14px;
			border-radius: 4px;
			border: none;
			cursor: pointer;
			transition: all 0.3s ease;
			margin: 5px;
		}

		.btn:hover {
			background-color: #005f78;
		}
        .edit-btn{
            background-color: green;
            width: 100px;
        }
        .delete-btn{
            background-color: red;
            width: 100px;
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
                    <span class="text">All Products</span>
                </div>

                <div class="boxes">

                    <table style="border: none;">
                        <thead>
                            <tr>
                                <th>Product ID</th>
                                <th>Product Name</th>
                                <th>Brand</th>
                                <th>Category</th>
                                <th>Price</th>
                                <th>Image</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                        <% 
                        NameFromID ni= new NameFromID();
                        
                        for (Products product : products) { 
                        System.out.println(product.getBrand_id());
                        %>
                            <tr>
                                <td><%=product.getProduct_id() %></td>
                                <td><%=product.getProduct_name() %></td>
                                <td><%=ni.getBrandName(product.getBrand_id())%></td>
                                <td><%=ni.getCatName(product.getCat_id())%></td>
                                <td><%=product.getProduct_price()%></td>
                                <td><img src="image_products/<%=product.getProduct_image()%>" alt="Product_image" style="width:150px"></td>
                                <td>
								<form action="${pageContext.request.contextPath}/AdminUpdateProducts?updateBtn=<%=product.getProduct_id()%>" method="post" style="padding: 2%;border: none; border-radius: 2%;">
                                    <button class="btn edit-btn">Edit</button>
                                </form>
                                
								<form action="${pageContext.request.contextPath}/AdminDeleteProducts?deleteBtn=<%=product.getProduct_id()%>" method="post" style="padding: 2%;border: none; border-radius: 2%;">
                                    <button class="btn delete-btn">Delete</button>
								</form>
								
                                </td>
                            </tr>
                         <%}%>
                            <!-- Add more products here -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <script src="View Admin/script.js"></script>
    </body>
    </html>