<%@page import="com.model.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% 

Users user = (Users)session.getAttribute("users"); // to get the value from the session using users module




if (user == null){
	response.sendRedirect("Login.jsp");
}else{
	System.out.println("The user session is used by : " + user);
}


    
    
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Profile</title>
<style>
		/* for the modal*/
/* The Modal (background) */
  .modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    /* background-color: rgba(0,0,0,0.4); Black w/ opacity */
    backdrop-filter: blur(2px);
  }

  /* Modal Content/Box */
  .modal-content {
    background-color: #ECF2FF;
	margin: auto; /* Center horizontally */
    margin-top: 1%; /* Center vertically */
    padding:  2px 20px ;
    border: 1px solid #a0bbf7;
    width: 40%; /* width of the mmodel*/
    height:80%;
    border-radius:15px;
    
    
  }

  .modal_content_inner{
    margin:5px 20px;
    
  }
  /* Profile image  */


  /* The Close Button */
  .close {
    color: #aaa;
    float: right;
    font-size: 35px;
    font-weight: bold;
    
  }

  .close:hover,
  .close:focus {
    color: white;
    text-decoration: none;
    cursor: pointer;
  }

  /* edit profile button */

  
	.green_but{
	  width:90%;
	  font-size:1.4rem;
	  background-color: #42f168;
	  color:white;
	  padding:10px 0px;
	  border-radius:10px;
	  margin-top:25px;
	  cursor: pointer;
	  border:1px solid rgb(143, 236, 4);
  
}


	.red_but{
	  width:90%;
	  font-size:1.4rem;
	  background-color: rgb(242, 67, 67);
	  color:white;
	  padding:10px 0px;
	  border-radius:10px;
	  margin-top:5px;
	  cursor: pointer;
	  border:2px solid red;
	  
}
  
    /* styling the textfields */
  .textfield{
    padding:8px 10px;
    border:1px solid rgb(175, 170, 170);
    border-radius: 10px;
    font-size: 1rem;
    color:grey;
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    width:67%;
    outline-style: none;
    margin:10px 0px;

  }

  .form_modal label{
    width: 110px;
    display:inline-block;
  }
  
  


</style>
</head>
<body>

   <!-- Main -->
    <div class="main">
        <h2>Your Profile</h2>
        <div class="card">
                <img src = "../image_users/<%=user.getImage_user() %>" alt = "profileimage" class = "profile_main_image" style="
                height:200px; width:200px; border-radius:50%;">

            <div class="card-body">
                
                <table>
                    <tbody>
                    	 <h2 style = "margin-left:160px;"><%= user.getUser_name() %></h2>
                        <tr>
                            <td><b>Name</b></td>
                            <td>: </td>
                            <td><%= user.getUser_name() %></td>
                        </tr>
                        <tr>
                            <td><b>Email</b></td>
                            <td>: </td>
                            <td><%= user.getEmail()%></td>
                        </tr>
                        <tr>
                            <td><b>Address</b></td>
                            <td>: </td>
                            <td><%= user.getUser_address()%></td>
                        </tr>
                        <tr>
                            <td><b>Phone</b></td>
                            <td>: </td>
                            <td><%= user.getUser_phone()%></td>
                        </tr>
                        <tr>
                            <td><b>Gender</b></td>
                            <td>: </td>
                            <td> <%= user.getGender()%></td>
                        </tr>
                       
                    </tbody>
                </table>
              <button id = "openModal2" class = "Edit">Edit Profile</button>
            </div>
        </div>

    </div>
    
    
     <!-- Updating the details form -->
	
	<!-- Modal 2 Content/Box -->
	<div id="myModal2" class="modal">
	  	<div class="modal-content">
	
		    <div class="form_modal" style = "margin-top:50px;">
		      <form action="${pageContext.request.contextPath}/UpdateDetails" method = "post" enctype="multipart/form-data">
		        <h1 style="color:black;" >Update Profile</h1>
		        <label for="user_name">User Name : </label>
		        <input type="text" class="textfield" name ="user_name" value ="<%= user.getUser_name()%>">
		        <br>
		  
		        <label for="gender">Gender : </label>
		        <input type="text" class="textfield" name = "gender" value ="<%= user.getGender()%>">
		        <br>
		  
		        <label for="address">Address : </label>
		        <input type="text" class="textfield" name = "address" value ="<%= user.getUser_address()%>">
		        <br>
		  
		        <label for="phoneno">Phone No : </label>
		        <input type="text" class="textfield" name = "phone_no" value ="<%= user.getUser_phone()%>">
		        <br>
		  
		        <label for="password">Password : </label>
		        <input type="password" class="textfield" name = "password" value ="<%= user.getPassword()%>">
		        <br>
		  
		        <label for="image">Profile Image:</label>
		        <input type="file" style="margin:10px;" name = "user_image" >
		        <br>
		  
		        
		        <input type="submit" class = "green_but" value = "Save Changes">
		      </form>
		    </div>
    <br>
    <button id="closeModal2" class = "red_but">Close</button>
  		</div>
  
  
	</div>





    <!-- the profile end here -->


    
    <!-- for the modal -->
   
	
			

	
	
	
	<script>
	  
	var modal = document.getElementById("profile-modal");
	
	var btn = document.querySelector("button");
	
	var span = document.querySelector(".close");
	
	function openModal() {
	  modal.style.display = "block";
	}
	
	function closeModal() {
	  modal.style.display = "none";
	}
	
	window.onclick = function(event) {
	  if (event.target == modal) {
	    modal.style.display = "none";
	  }
	}
	
	var btn = document.getElementById("openModal2");

	var modal2 = document.getElementById("myModal2");

	btn.onclick = function() {
	  modal2.style.display = "block";
	}

	var closeBtn = document.getElementById("closeModal2");

	closeBtn.onclick = function() {
	  modal2.style.display = "none";
	} 
	
	</script>

</body>
</html>