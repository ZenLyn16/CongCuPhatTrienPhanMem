package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import database.connectionpool.ConnectionPool;
import database.connectionpool.ConnectionPoolImpl;
import model.Category;

public class CategoryDAOHandler {
	private ConnectionPool cp;
	private Connection con;

	public CategoryDAOHandler() {
		this.cp = new ConnectionPoolImpl();
		try {
			this.con = this.cp.getConnection("Category");
			if (this.con.getAutoCommit()) {
				this.con.setAutoCommit(false);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Category getCategoryById(int idGet) {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM tblcategory WHERE category_id = ?");

		try {
			PreparedStatement pst = this.con.prepareStatement(sql.toString());
			pst.setInt(1, idGet);

			ResultSet rs = pst.executeQuery();

			if (rs != null) {
				while (rs.next()) {
					return new Category(rs.getInt("category_id"), rs.getString("category_name"));
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

	public ArrayList<Category> getCategorys(byte total) {
		ArrayList<Category> items = new ArrayList<>();

		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM tblcategory LIMIT ?");

		try {
			PreparedStatement pst = this.con.prepareStatement(sql.toString());
			pst.setByte(1, total);

			ResultSet rs = pst.executeQuery();

			if (rs != null) {
				while (rs.next()) {
					items.add(new Category(rs.getInt("category_id"), rs.getString("category_name")));
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
		return items;
	}

	public boolean addCategory(Category item) {
		StringBuilder sql = new StringBuilder();
		sql.append("INSERT INTO tblcategory(category_id, category_name) ");
		sql.append("VALUES(?, ?)");
		try {
			PreparedStatement pst = this.con.prepareStatement(sql.toString());
			pst.setInt(1, item.getCategory_id());
			pst.setString(2, item.getCategory_name());

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

	public boolean updateCategory(Category item) {
		StringBuilder sql = new StringBuilder();
		sql.append("UPDATE tblcategory ");
		sql.append("SET category_name = ? ");
		sql.append("WHERE category_id = ?");

		try {
			PreparedStatement pst = this.con.prepareStatement(sql.toString());
			pst.setString(1, item.getCategory_name());
			pst.setInt(2, item.getCategory_id());

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

	public boolean deleteCategory(int idDel) {
		StringBuilder sql = new StringBuilder();
		sql.append("DELETE FROM tblcategory ");
		sql.append("WHERE category_id = ?");

		try {
			PreparedStatement pst = this.con.prepareStatement(sql.toString());
			pst.setInt(1, idDel);

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
	
//	public static void main(String[] args) {
//		CategoryDAOHandler dao = new CategoryDAOHandler();
//		
//		Category newCate = new Category(6, "Sách chuyên ngành");
//		if (dao.addCategory(newCate)) {
//			System.out.println("Add success!");
//		} else {
//			System.out.println("Add fail!");
//		}
//		
////		Category editCate = new Category(5, "Sách thiếu nhi");
////		if (dao.updateCategory(editCate)) {
////			System.out.println("Update success!");
////		} else {
////			System.out.println("Update fail!");
////		}
//		
////		if (dao.deleteCategory(6)) {
////			System.out.println("Delete success!");
////		} else {
////			System.out.println("Delete fail!");
////		}
//		
//		ArrayList<Category> items = dao.getCategorys((byte)20);
//		items.forEach(item -> {
//			System.out.println(item);
//		});
////		System.out.println(new CategoryDAOHandler().getCategoryById(1));
//	}
}
