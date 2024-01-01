package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import database.connectionpool.ConnectionPool;
import database.connectionpool.ConnectionPoolImpl;
import model.Book;

public class BookDAOHandler {
	private ConnectionPool cp;
	private Connection con;
	private CategoryDAOHandler dao;

	public BookDAOHandler() {
		this.cp = new ConnectionPoolImpl();
		try {
			this.con = this.cp.getConnection("Book");
			if (this.con.getAutoCommit()) {
				this.con.setAutoCommit(false);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dao = new CategoryDAOHandler();
	}

	public Book getBookById(int idGet) {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM tblbook WHERE book_id = ?");

		try {
			PreparedStatement pst = this.con.prepareStatement(sql.toString());
			pst.setInt(1, idGet);

			ResultSet rs = pst.executeQuery();

			if (rs != null) {
				while (rs.next()) {
					return new Book(idGet, rs.getString("book_name"), dao.getCategoryById(rs.getInt("book_category")),
							rs.getString("book_author"), rs.getString("book_image"), rs.getDouble("book_price"),
							rs.getDouble("book_original_price"), rs.getDouble("book_discount_price"),
							rs.getString("book_notes"), rs.getString("book_status"), rs.getInt("book_quantity"));
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

	public ArrayList<Book> getBooksByCategory(int categoryGet) {
		ArrayList<Book> items = new ArrayList<>();
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM tblbook WHERE book_category = ?");

		try {
			PreparedStatement pst = this.con.prepareStatement(sql.toString());
			pst.setInt(1, categoryGet);

			ResultSet rs = pst.executeQuery();

			if (rs != null) {
				while (rs.next()) {
					items.add(new Book(rs.getInt("book_id"), rs.getString("book_name"),
							dao.getCategoryById(rs.getInt("book_category")), rs.getString("book_author"),
							rs.getString("book_image"), rs.getDouble("book_price"), rs.getDouble("book_original_price"),
							rs.getDouble("book_discount_price"), rs.getString("book_notes"),
							rs.getString("book_status"), rs.getInt("book_quantity")));
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

	public ArrayList<Book> getBooksByName(String name) {
		ArrayList<Book> items = new ArrayList<>();
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM tblbook WHERE book_name LIKE ?");

		try {
			PreparedStatement pst = this.con.prepareStatement(sql.toString());
			pst.setString(1, "%" + name + "%");

			ResultSet rs = pst.executeQuery();

			if (rs != null) {
				while (rs.next()) {
					items.add(new Book(rs.getInt("book_id"), rs.getString("book_name"),
							dao.getCategoryById(rs.getInt("book_category")), rs.getString("book_author"),
							rs.getString("book_image"), rs.getDouble("book_price"), rs.getDouble("book_original_price"),
							rs.getDouble("book_discount_price"), rs.getString("book_notes"),
							rs.getString("book_status"), rs.getInt("book_quantity")));
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

	public ArrayList<Book> getBooks(byte total) {
		ArrayList<Book> items = new ArrayList<>();

		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM tblbook LIMIT ?");

		try {
			PreparedStatement pst = this.con.prepareStatement(sql.toString());
			pst.setByte(1, total);

			ResultSet rs = pst.executeQuery();

			if (rs != null) {
				while (rs.next()) {
					items.add(new Book(rs.getInt("book_id"), rs.getString("book_name"),
							dao.getCategoryById(rs.getInt("book_category")), rs.getString("book_author"),
							rs.getString("book_image"), rs.getDouble("book_price"), rs.getDouble("book_original_price"),
							rs.getDouble("book_discount_price"), rs.getString("book_notes"),
							rs.getString("book_status"), rs.getInt("book_quantity")));
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

	public boolean addBook(Book item) {
		StringBuilder sql = new StringBuilder();
		sql.append("INSERT INTO tblbook(book_id, book_name, book_category, book_author, "
				+ "book_image, book_price, book_original_price, book_discount_price, "
				+ "book_notes, book_status, book_quantity) ");
		sql.append("VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

		try {
			PreparedStatement pst = this.con.prepareStatement(sql.toString());
			pst.setInt(1, item.getBook_id());
			pst.setString(2, item.getBook_name());
			pst.setInt(3, item.getBook_category().getCategory_id());
			pst.setString(4, item.getBook_author());
			pst.setString(5, item.getBook_image());
			pst.setDouble(6, item.getBook_price());
			pst.setDouble(7, item.getBook_original_price());
			pst.setDouble(8, item.getBook_discount_price());
			pst.setString(9, item.getBook_notes());
			pst.setString(10, item.getBook_status());
			pst.setInt(11, item.getBook_quantity());

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

	public boolean updateBook(Book item) {
		StringBuilder sql = new StringBuilder();
		sql.append("UPDATE tblbook ");
		sql.append("SET book_name = ?, book_category = ?, book_author = ?, "
				+ "book_image = ?, book_price = ?, book_original_price = ?, book_discount_price = ?, "
				+ "book_notes = ?, book_status = ?, book_quantity = ? ");
		sql.append("WHERE book_id = ?");

		try {
			PreparedStatement pst = this.con.prepareStatement(sql.toString());
			pst.setString(1, item.getBook_name());
			pst.setInt(2, item.getBook_category().getCategory_id());
			pst.setString(3, item.getBook_author());
			pst.setString(4, item.getBook_image());
			pst.setDouble(5, item.getBook_price());
			pst.setDouble(6, item.getBook_original_price());
			pst.setDouble(7, item.getBook_discount_price());
			pst.setString(8, item.getBook_notes());
			pst.setString(9, item.getBook_status());
			pst.setInt(10, item.getBook_quantity());
			pst.setInt(11, item.getBook_id());

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

	public boolean deleteBook(int idDel) {
		StringBuilder sql = new StringBuilder();
		sql.append("DELETE FROM tblbook ");
		sql.append("WHERE book_id = ?");

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

//	Đếm số lượng sách
	public int getTotalBooks() {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT COUNT(*) FROM tblbook");
		try {
			PreparedStatement pst = this.con.prepareStatement(sql.toString());
			ResultSet rs = pst.executeQuery();
			if (rs != null) {
				while (rs.next()) {
					return rs.getInt(1);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	public ArrayList<Book> pagingBooks(int index) {
		ArrayList<Book> items = new ArrayList<>();
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM tblbook ORDER BY book_id asc LIMIT 12 OFFSET ?");
		try {
			PreparedStatement pst = this.con.prepareStatement(sql.toString());
			pst.setInt(1, (index - 1) * 3);
			ResultSet rs = pst.executeQuery();

			if (rs != null) {
				while (rs.next()) {
					items.add(new Book(rs.getInt("book_id"), rs.getString("book_name"),
							dao.getCategoryById(rs.getInt("book_category")), rs.getString("book_author"),
							rs.getString("book_image"), rs.getDouble("book_price"), rs.getDouble("book_original_price"),
							rs.getDouble("book_discount_price"), rs.getString("book_notes"),
							rs.getString("book_status"), rs.getInt("book_quantity")));
				}
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				this.con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}

		return items;
	}

	public static void main(String[] args) {
		ArrayList<Book> items = new BookDAOHandler().pagingBooks(2);
		System.out.println(items);
	}

//	public static void main(String[] args) {
//		BookDAOHandler dao = new BookDAOHandler();
//		CategoryDAOHandler daoC = new CategoryDAOHandler();
//		
//		Add
//		Book newBook = new Book(6, "a", daoC.getCategoryById(1), "b", "c", 3, 4, 5, "a", "b", 50);
//		if (dao.addBook(newBook)) {
//			System.out.println("Add success!");
//		} else {
//			System.out.println("Add fail!");
//		}
//		
//		Update
//		Book newBook = new Book(6, "abczyx", daoC.getCategoryById(2), "b", "c", 3, 4, 5, "a", "b", 50);
//		if (dao.updateBook(newBook)) {
//			System.out.println("Update success!");
//		} else {
//			System.out.println("Update fail!");
//		}
//		
//		Delete
//		if (dao.deleteBook(6)) {
//			System.out.println("Delete success!");
//		} else {
//			System.out.println("Delete fail!");
//		}
//		
//		ArrayList<Book> items = dao.getBooksByCategory(2);
//		items.forEach(item -> {
//			System.out.println(item);
//		});
//		System.out.println(new BookDAOHandler().getBookById(1));
//	}

}
