package com.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.controller.databaseConnection.db_connection;
import com.controller.user.IdFromName;
import com.controller.user.insertImage;
import com.model.Products;

/**
 * Servlet implementation class AdminProductsUpdated
 */

@MultipartConfig
public class AdminProductsUpdatedProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public db_connection dc;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProductsUpdatedProcess() {
        super();
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
		
		HttpSession session = request.getSession();
		List<Products> productDescription = (List<Products>) session.getAttribute("product_description");
		
		
		if (productDescription==null) {
			System.out.println("null");
		}
		this.dc= new db_connection();
		IdFromName in= new IdFromName();
		insertImage ig= new insertImage();
		
		String cat_name= request.getParameter("product-category");
		String brand_name= request.getParameter("product-brand");
		String productName=  request.getParameter("product-name");
		String productPrice= request.getParameter("product-price");
		int cat_id= in.getCat_id(cat_name);
		int brand_id= in.getBrand_id(brand_name);
		String productDesc= request.getParameter("product-description");

		for (Products product: productDescription) {
			
			System.out.println(product.getProduct_image());
			
		if (request.getPart("product-image").getSize()!=0) {
			product.setProduct_image(ig.insertImageAdmin(request.getPart("product-image")));
		}

		
		if (product.getProduct_image().isEmpty()) {
			product.setProduct_image("NULL");
		}
		
		String query="UPDATE products SET cat_id="+cat_id+",brand_id="+brand_id+",product_name = '"+productName+"', product_price ="+productPrice+",product_desc='"+productDesc+"', product_image= '"+product.getProduct_image()+"' WHERE product_id ="+product.getProduct_id();
		
		
		
//		PrintWriter out = response.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=this.dc.getConnect();
			PreparedStatement ps= con.prepareStatement(query);
			
			int rs=ps.executeUpdate();
			
			if (rs>0) {
				System.out.println("Product Update Successfully");
				response.sendRedirect("AdminProducts");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
}