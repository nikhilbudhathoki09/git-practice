package com.controller.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;

import com.model.Carts;


public class CartRemove extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String product_id = request.getParameter("product_id");
		
		int Id = Integer.parseInt(product_id);
		
		HttpSession session = request.getSession();
		
		ArrayList<Carts> cartListSession = (ArrayList<Carts>) session.getAttribute("carts"); //calling the addcarts sessino where carts objects are stored
		
		if (cartListSession ==  null) {
			System.out.println("There are no products in the cart");
		}else {
			for(Carts c:cartListSession) {
				if(c.getProduct_id() == Id) {
					cartListSession.remove(c); //removing the particular element from the session
					break;
				}

			}
			//updating the session
			session.setAttribute("carts", cartListSession);
			response.sendRedirect("View User/Carts.jsp");

		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
