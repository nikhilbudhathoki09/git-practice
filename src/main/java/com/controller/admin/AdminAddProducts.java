package com.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.controller.admin.AdminProductDAO;
import com.model.Products;


/**
 * Servlet implementation class AdminAddProducts
 */

@MultipartConfig
public class AdminAddProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public AdminProductDAO adminProductDAO;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddProducts() {
        super();
        adminProductDAO= new AdminProductDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		com.controller.user.IdFromName in= new com.controller.user.IdFromName();
		com.controller.user.insertImage ig= new com.controller.user.insertImage();
		
		
		response.getWriter().append("Served at: ").append(request.getParameter("product-category"));
		
		
		String cat_name= request.getParameter("product-category");
		String brand_name= request.getParameter("product-brand");
		
		String productName=  request.getParameter("product-name");
		int productPrice= Integer.parseInt(request.getParameter("product-price"));
		int cat_id= in.getCat_id(cat_name);
		int brand_id= in.getBrand_id(brand_name);
		String productDesc= request.getParameter("product-description");
		String imageName= ig.insertImageAdmin(request.getPart("product-image"));
	
		
		Products product= new Products();
		product.setCat_id(cat_id);
		product.setBrand_id(brand_id);
		product.setProduct_name(productName);
		product.setProduct_price(productPrice);
		product.setProduct_image(imageName);
		product.setProduct_desc(productDesc);
		
		boolean inserted= adminProductDAO.addProduct(product);
		
		if (inserted=true) {
			System.out.println("Product Added Successfully");
			response.sendRedirect("AdminProducts");
		}
		else if(inserted=false) {
			System.out.println("Product Added Failed");
		}
	}
		
	}