package com.controller.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.controller.databaseConnection.db_connection;
import com.model.Products;

public class UserProductsDAO {
	
	public List<Products> getAllProducts(){
		List<Products> productList= new ArrayList<>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			db_connection db= new db_connection();
	        Connection con = db.getConnect();
	        
	        String query = "Select product_id,product_name, product_price,product_image from products";
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
	
	
	
	public List<Products> getMenProducts(int cat_id){
		List<Products> productList= new ArrayList<>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			db_connection db= new db_connection();
	        Connection con = db.getConnect();
	        
	        String query = "Select product_id,product_name, product_price,product_image from products where cat_id =" + cat_id+" And gender_id=1";
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
	
	
	public List<Products> getWomenProducts(int cat_id){
		List<Products> productList= new ArrayList<>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			db_connection db= new db_connection();
	        Connection con = db.getConnect();
	        
	        String query = "Select product_id,product_name, product_price,product_image from products where cat_id =" +cat_id+" And gender_id=2";
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
	
	
	public List<Products> getSearchProducts(String productBySearch){
		List<Products> productList= new ArrayList<>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			db_connection db= new db_connection();
	        Connection con = db.getConnect();
	        
	        String query="SELECT product_id,product_name,product_price,product_image FROM products JOIN brands ON products.brand_id = brands.brand_id JOIN categories ON products.cat_id = categories.cat_id WHERE products.product_name Like '%"+productBySearch+"%' OR brands.brand_name Like '%"+productBySearch+"%'  OR categories.cat_name Like '%"+productBySearch+"%'";
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
	public List<Products> getSearchBrands(String productByBrand){
		List<Products> productList= new ArrayList<>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			db_connection db= new db_connection();
	        Connection con = db.getConnect();
	        
	        String query="SELECT product_id,product_name,product_price,product_image FROM products JOIN brands ON products.brand_id = brands.brand_id JOIN categories ON products.cat_id = categories.cat_id WHERE brands.brand_name Like '"+productByBrand+"'";
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
	
}

