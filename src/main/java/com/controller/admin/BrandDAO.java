package com.controller.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.controller.databaseConnection.db_connection;
import com.model.Brand;


public class BrandDAO {
	
	public List<Brand> getAllBrands(){
		List<Brand> brandList= new ArrayList<>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			db_connection db= new db_connection();
	        Connection con = db.getConnect();
	        
	        String query = "Select * from brands";
	        PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
            	Brand brand= new Brand();
            	brand.setBrand_id(rs.getInt("brand_id"));
            	brand.setBrand_name(rs.getString("brand_name"));
            	brandList.add(brand);
            }
            
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return brandList;
	}
	
	
	public List<Brand> getSearchBrands(String search){
	List<Brand> brandList= new ArrayList<>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			db_connection db= new db_connection();
	        Connection con = db.getConnect();
	        
	        String query = "Select brand_id,brand_name from brands where brand_name Like '%"+search+"%'";
	        PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
            	Brand brand= new Brand();
            	brand.setBrand_id(rs.getInt("brand_id"));
            	brand.setBrand_name(rs.getString("brand_name"));
            	
            	brandList.add(brand);
            }
            
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return brandList;
	}
	
	
	public boolean addBrand(Brand brand) {
		boolean inserted= false;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			db_connection db= new db_connection();
	        Connection con = db.getConnect();
	        
	        String query="INSERT INTO `brands` (`brand_name`) VALUES ('"+brand.getBrand_name()+"')";
	        PreparedStatement ps = con.prepareStatement(query);
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