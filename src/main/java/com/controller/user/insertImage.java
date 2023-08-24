package com.controller.user;

import java.io.FileOutputStream;
import java.io.InputStream;

import jakarta.servlet.http.Part;

public class insertImage {
	
	public String insertImageAdmin(Part image) {
		String imageName="";
		try {
		Part file= image;
		
		imageName= file.getSubmittedFileName();
//		System.out.println(imageName);
		
		String path= "C:/Users/Asus/eclipse-dynamiwebsite/kunyo/src/main/webapp/image_products"+imageName;
//		
		
		FileOutputStream fos = new FileOutputStream(path);
		InputStream is = file.getInputStream();
		
		byte[] data = new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		
	}catch(Exception ex) {
		ex.getStackTrace();
	}
		return imageName;
	}

}