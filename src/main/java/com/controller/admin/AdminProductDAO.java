package com.controller.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.controller.databaseConnection.db_connection;
import com.model.Products;


public class AdminProductDAO {
	
	public List<com.model.Products> getAllProducts(){
		List<Products> productList= new ArrayList<>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			db_connection db= new db_connection();
	        Connection con = db.getConnect();
	        
	        String query = "Select * from products";
	        PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
            	Products product= new Products();
            	product.setProduct_id(rs.getInt("product_id"));
            	product.setBrand_id(rs.getInt("brand_id"));
            	product.setCat_id(rs.getInt("cat_id"));
            	product.setProduct_name(rs.getString("product_name"));
            	product.setProduct_price(rs.getInt("product_price"));
            	product.setProduct_image(rs.getString("product_image"));
            	
            	productList.add(product);
            }
            
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return productList;
	}
	
	
	public List<Products> getSearchProducts(String search){
		List<Products> productList= new ArrayList<>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			db_connection db= new db_connection();
	        Connection con = db.getConnect();
	        
	        String query= "SELECT * FROM products JOIN brand ON products.brand_id = brand.brand_id JOIN categories ON products.cat_id = categories.cat_id WHERE products.product_name Like '%"+search+"%' OR brand.brand_name Like '%"+search+"%'  OR categories.cat_name Like '%"+search+"%'";
	        PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
            	Products product= new Products();
            	product.setProduct_id(rs.getInt("product_id"));
            	product.setProduct_name(rs.getString("product_name"));
            	product.setProduct_price(rs.getInt("product_price"));
            	product.setProduct_image(rs.getString("product_image"));

            	
            	productList.add(product);
            }
            
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return productList;
	}
	
	
	public boolean addProduct(Products product) {
		boolean inserted= false;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			db_connection db= new db_connection();
	        Connection con = db.getConnect();
	        
	        String query= "INSERT INTO `products` (`cat_id`, `brand_id`, `product_name`, `product_price`, `product_image`, `product_desc`) VALUES (?,?,?,?,?,?)";
	        PreparedStatement ps = con.prepareStatement(query);
	        
	        ps.setInt(1, product.getCat_id());
	        ps.setInt(2, product.getBrand_id());
	        ps.setString(3, product.getProduct_name());
	        ps.setDouble(4,product.getProduct_price());
	        ps.setString(5, product.getProduct_image());
	        ps.setString(6,product.getProduct_desc());
	        
	        
	        int check=ps.executeUpdate();
	        
	        if (check>0) {
	        	inserted= true;
	        }
            
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return inserted;
	}
}