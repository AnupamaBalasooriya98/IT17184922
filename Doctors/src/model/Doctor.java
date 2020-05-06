package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Doctor {
	// Database connection
	public Connection connection() {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/doctors", "root", "");
			
			System.out.println("Successfully coonnected");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return con;
	}
	
	// Insert doctor details
	public String insert(String dname, String mail, String phone, String spec) {
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
			pstmt.setString(3, phone);
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
	
	// Read doctor details
	public String read() {
		String output = "";
		
		try {
			Connection con = connection();
			
			if (con == null) {
				return "Error";
			}
			
			String qry = "SELECT * FROM doctors";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(qry);
			
			while (rs.next()) {
				String id = Integer.toString(rs.getInt("id"));
				String name = rs.getString("name");
				String email = rs.getString("email");
				String phone = Integer.toString(rs.getInt("phone"));
				String specialization = rs.getString("specialization");
			}
			
			con.close();
			
			output = "Done";
		} catch (Exception e) {
			// TODO: handle exception
			output = "Error";
			System.out.println(e.getMessage());
		}
		
		return output;
	}
	
	// Update doctor
	public String update(String id, String name, String email, String phone, String spec){
		String output = "";
		
		try{
			Connection con = connection();
			if (con == null)
			{
				return "Error while connecting to the database for updating."; 
			}
			// create a prepared statement
			String query = "update doctable set name=?, email=?, phone=?, spec=? WHERE id=?";
			
			PreparedStatement preparedStmt = con.prepareStatement(query);
			// binding values
			preparedStmt.setString(1, name);
			preparedStmt.setString(2, email);
			preparedStmt.setInt(3, Integer.parseInt(phone));
			preparedStmt.setString(4, spec);
			preparedStmt.setInt(5, Integer.parseInt(id));;
		
			// execute the statement
			preparedStmt.execute();
			con.close();
			output = "Data Updated";
		  
		 }catch (Exception e){
			 
			output = "Error while updating.";
			System.err.println(e.getMessage());
		 }
		
	   return output;
		
	}
	
	// Remove doctor
	public String delete(String did) {
		String output = "";
		
		try {
			Connection con = connection();
			
			if (con == null) {
				return "Error";
			}
			
			String qry = "DELETE FROM doctors WHERE id = ?";
			
			PreparedStatement pstmt = con.prepareStatement(qry);
			
			pstmt.setInt(1, Integer.parseInt(did));
			
			pstmt.execute();
			con.close();
			
			output = "Deleted";
		} catch (Exception e) {
			// TODO: handle exception
			output = "Error";
			System.out.println(e.getMessage());
		}
		
		return output;
	}
}
