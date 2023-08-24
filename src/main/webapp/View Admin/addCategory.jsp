<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="styleAdmin.css">
     
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="stylesheet" href="apexcharts.css">
    <title>Add Category</title>

    <style>
.product-form {
  width: 80%;
  max-width: 800px;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #ddd;
  border-radius: 5px;
  background-color: #fff;
}

.product-form h2 {
  margin-top: 0;
}

.form-group {
  margin-bottom: 20px;
}

.form-group label {
  display: block;
  font-weight: bold;
  margin-bottom: 5px;
}

.form-group select,
.form-group input[type="text"],
.form-group input[type="number"],
.form-group textarea {
  width: 100%;
  padding: 10px;
  border: 1px solid #ddd;
  border-radius: 5px;
  background-color: #f5f5f5;
  font-size: 16px;
  font-family: inherit;
  color: #333;
}

.form-group select {
  appearance: none;
  -webkit-appearance: none;
  -moz-appearance: none;
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='%23333'%3E%3Cpath d='M7 10l5 5 5-5z'/%3E%3C/svg%3E");
  background-repeat: no-repeat;
  background-position: right 10px center;
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
            
            <!--<img src="images/profile.jpg" alt="">-->
        </div>

        <div class="dash-content">
            <div class="overview">
                <div class="title">
                    <i class="uil uil-tachometer-fast-alt"></i>
                    <span class="text">Add Category</span>
                </div>
                <div class="boxes">
                    <div class="product-form">
                        <form action="${pageContext.request.contextPath}/AdminAddCategory" method="post">
                          <div class="form-group">
                            <label for="name">Category Name:</label>
                            <input type="text" id="category-name" name="cat-name" placeholder="Enter category name...">
                          </div>
                          <div class="form-group">
                            <button type="submit" style="width: 760px; height: 40px; border: none; background-color: #0E4BF1; color: #ddd; border-radius: 10px;">Add Brand</button>
                          </div>
                        </form>
                      </div>
                      
                </div>
            </div>
        </div>
    </section>
    <script src="script.js"></script>
    </body>
</html>

