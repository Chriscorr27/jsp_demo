package com.login.dao;
import java.sql.*;

import com.login.model.User;

public class LoginDAO {
	String url = "jdbc:mysql://localhost:3306/ISS";
	String username = "root";
	String pass="27082001";
	Connection con;
	public LoginDAO() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		this.con = DriverManager.getConnection(this.url,this.username,this.pass);
	}
	public boolean insertUserData(String user_name,String name,String gender,String password) {
		try {
			String query = "INSERT INTO user VALUES (?, ?, ?, ?);";
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, user_name);
			st.setString(2, name);
			st.setString(3, gender);
			st.setString(4, password);
			int res = st.executeUpdate();
			return res>0;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean isLogin(String user_name,String password) {
		try {
			String query = "select * from user where user_name=? and password=?;";
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, user_name);
			st.setString(2, password);
			ResultSet res = st.executeQuery();
			if(res.next()) {
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public User getUserData(String user_name) {
		try {
			String query = "select * from user where user_name=?;";
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, user_name);
			ResultSet res = st.executeQuery();
			if(res.next()) {
				User user = new User(res.getString("name"),res.getString("user_name"),res.getString("gender"));
				return user;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
