package com.controller.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import com.model.Products;


/**
 * Servlet implementation class ViewProducts
 */
public class ViewProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserProductsDAO userProductDAO;
 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewProducts() {
        super();
        userProductDAO= new UserProductsDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		List<Products> productsList= null;
		HttpSession session = request.getSession();
		session.getAttribute("users");
		
		String productBySearch = request.getParameter("productName");
		
		String allProducts= request.getParameter("allProducts");
		
		String productsByBrand= request.getParameter("brand");
		
		System.out.println(productsByBrand);
		
		IdFromName in = new IdFromName();
		
		
		if (productBySearch != null) {
			productsList= userProductDAO.getSearchProducts(productBySearch);
		}
		else if(allProducts!=null) {
			productsList= userProductDAO.getAllProducts();
		}
		else if(productsByBrand!=null) {
			productsList= userProductDAO.getSearchBrands(productsByBrand);
		}
		
		
		
		request.setAttribute("products", productsList);
		request.getAttribute("users");
		request.getRequestDispatcher("View User/products.jsp").forward(request, response);
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
