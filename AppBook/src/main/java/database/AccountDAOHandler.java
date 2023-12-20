package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.connectionpool.ConnectionPool;
import database.connectionpool.ConnectionPoolImpl;
import model.Account;

public class AccountDAOHandler {
	private ConnectionPool cp;
	private Connection con;
	
	public AccountDAOHandler() {
		this.cp = new ConnectionPoolImpl();
		try {
			this.con = this.cp.getConnection("Account");
			if (this.con.getAutoCommit()) {
				this.con.setAutoCommit(false);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Account checkLogin(String username, String password) {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM tblaccount\r\n"
				+ "WHERE account_username = ? AND account_password = ?");
		
		try {
			PreparedStatement pst = this.con.prepareStatement(sql.toString());
			pst.setString(1, username);
			pst.setString(2, password);
			
			ResultSet rs = pst.executeQuery();
			
			if (rs != null) {
				while (rs.next()) {
					return new Account(rs.getInt(1), username, password, rs.getShort(4), rs.getShort(5));
				}
				rs.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				this.con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		return null;
	}
	
	public Account checkUserName(String username) {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM tblaccount\r\n"
				+ "WHERE account_username = ?");
		
		try {
			PreparedStatement pst = this.con.prepareStatement(sql.toString());
			pst.setString(1, username);
			
			ResultSet rs = pst.executeQuery();
			
			if (rs != null) {
				while (rs.next()) {
					return new Account(rs.getInt(1), username, rs.getString(3), rs.getShort(4), rs.getShort(5));
				}
				rs.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				this.con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		return null;
	}
	
	public boolean addAccount(String username, String password) {
		StringBuilder sql = new StringBuilder();
		sql.append("INSERT INTO tblaccount(account_username, account_password, account_is_sell, account_is_admin)\r\n"
				+ "VALUES(?, ?, 0, 0)");
		
		try {
			PreparedStatement pst = this.con.prepareStatement(sql.toString());
			pst.setString(1, username);
			pst.setString(2, password);
			
			int result = pst.executeUpdate();
			
			if (result == 0) {
				this.con.rollback();
				return false;
			}
			this.con.commit();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				this.con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			return false;
		}
	
	}
}
