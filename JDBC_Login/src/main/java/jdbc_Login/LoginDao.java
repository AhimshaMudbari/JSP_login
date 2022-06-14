package jdbc_Login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {

	public boolean checkStatus(String uname, String pwd) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ahimsDatabase","root","");
		PreparedStatement stmt=con.prepareStatement("SELECT * FROM `loginTable` WHERE uname=? AND pwd=?");
		stmt.setString(1, uname);
		stmt.setString(2, pwd);
		ResultSet rs = stmt.executeQuery();
		if(rs.next()) {
			return true;
		}
		return false;
	}
}
