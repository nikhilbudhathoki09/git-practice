<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<link rel="stylesheet" href="styles.css">

<style>
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


</style>

</head>
<body>
    <div class="nav">
        <header class="hamroHeader">
            
            <h3 class="hamrologo">Kunyo</h3>
            
            <div class = "nav-linkshamro">
                
        
                <ul class="nav-linkshamro">
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/ViewProducts?allProducts=display">Products</a></li>
                    <li><a hrf="#" >About Us</a></li>
 

                    
                </ul>
            </div>
            <div class = "nav-linkshamro">
                
        
                <ul class="nav-linkshamro">

                    <li><a href="Login.jsp">Login</a></li>
                    <li><a href="SignUp.jsp">SignUp</a></li>
                    
                </ul>
            </div>    
            
    
        </header>

    </div>
    
		<div class="signup-body">
			<div class="container-sign">
				<div class="title">Register</div>
					<label class="profilePic" for="image_input">
						<img id="image" src="image/Unknown_person.jpg">
						 </label>

				<div class="content">
				  <form action="../upload" method = "post" enctype = "multipart/form-data">
				  	<div class="ext" style="margin-top: 5px;">
							<label for="image_input">Upload Photo <i class="fa-solid fa-cloud-arrow-up" style="margin-left: 7px;"></i></label>
							<input type="file" id="image_input" name="user_image" required>
					</div>
					<div class="user-details">
					  <div class="input-box">
						<span class="details"> Name</span>
						<input type="text" placeholder="Your Name Here" name = "user_name"required>
					  </div>
					  <div class="input-box">
						<span class="details">Address</span>
						<input type="text" placeholder="Your Address"
						name = "user_address" required>
					  </div>
					  <div class="input-box">
						<span class="details">Email</span>
						<input type="email" placeholder="Your Email Here" name = "email"required>
					  </div>
					  <div class="input-box">
						<span class="details">Phone Number</span>
						<input type="text" placeholder="Your Phone Here" name = "phone" required>
					  </div>
					  <div class="input-box">
						<span class="details">Password</span>
						<input type="password" placeholder="Enter your password" name = "password" required>
					  </div>
					  <div class="input-box">
						<span class="details">Re-Password</span>
						<input type="password" placeholder="Enter your password again" name = "re-password" required>
					  </div>
					</div>
					<div class="gender-details">
					  <input type="radio" name="gender" id="dot-1" value ="Male">
					  <input type="radio" name="gender" id="dot-2" value = "Female">
					  <input type="radio" name="gender" id="dot-3" value = "Others">
					  <span class="gender-title">Gender</span>
					  <div class="category">
						<label for="dot-1">
						<span class="dot one"></span>
						<span class="gender">Male</span>
					  </label>
					  <label for="dot-2">
						<span class="dot two"></span>
						<span class="gender">Female</span>
					  </label>
					  <label for="dot-3">
						<span class="dot three"></span>
						<span class="gender">Others</span>
						</label>
					  </div>
					</div>
					<div class="button">
					  <input type="submit" style="font-weight: bold;" value="Register">

					</div>
							<div class="existing-acc">
								<p>Already have an account? <a href="Login.jsp"><b>Log in</b></a></p>
							</div>
				  </form>
						
				</div>
			  </div>
		</div>




    
</body>
</html>