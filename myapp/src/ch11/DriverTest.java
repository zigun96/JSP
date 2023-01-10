package ch11;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DriverTest {
	public static void main(String[] args) {
		Connection con;
		System.out.println("JDBC 연동 시작!!!");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("JDBC 접속!!!");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3307/mydb","root","1234");
			System.out.println("JDBC 연동 성공!!!");
		}
		catch(SQLException e) {System.out.println("SQLException:" + e);}
		catch(Exception e) {System.out.println("SQL 이외의 Exception:" + e);}
	}
}
