/**
 * 
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * @author Anupama Balasooriya
 *
 */
public class Doctor {
	public Connection connect() {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/doctors", "root", "");
			
			System.out.println("Successfully connected");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}
}
