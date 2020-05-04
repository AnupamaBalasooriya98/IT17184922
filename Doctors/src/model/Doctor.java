package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Doctor {
	// Database connection
	public Connection connection() {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/doctors", "root", "");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return con;
	}
	
	// Insert doctor details
	public String Insert(String dname, String mail, int pno, String spec) {
		String output = "";
		
		try {
			Connection con = connection();
			
			if (con == null) {
				return "Error while connecting to the database";
			}
			
			String qry = "INSERT INTO doctors VALUES (?, ?, ?, ?)";
			
			PreparedStatement pstmt = con.prepareStatement(qry);
			
			pstmt.setString(1, dname);
			pstmt.setString(2, mail);
			pstmt.setInt(3, pno);
			pstmt.setString(4, spec);
			
			con.close();
			
			output = "Inserted";
		} catch (Exception e) {
			// TODO: handle exception
			output = "Error";
			System.out.println(e.getMessage());
		}
		
		return output;
	}
	
	
}
