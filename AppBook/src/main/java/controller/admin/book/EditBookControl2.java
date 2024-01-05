package controller.admin.book;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.dao.BookDAOHandler;
import database.dao.CategoryDAOHandler;
import model.Book;

/**
 * Servlet implementation class EditBookControl2
 */
@WebServlet("/edit-book-2")
public class EditBookControl2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditBookControl2() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=\"utf-8\"");
		request.setCharacterEncoding("utf-8");
		CategoryDAOHandler daoC = new CategoryDAOHandler();

		int id = Integer.parseInt(request.getParameter("book_id"));
		String name = request.getParameter("book_name");
		String categorytxt = request.getParameter("book_category");
		int category = Integer.parseInt(categorytxt);
		String author = request.getParameter("book_author");
		String image = request.getParameter("book_image");
		String pricetxt = request.getParameter("book_price");
		double price = Double.parseDouble(pricetxt);
		String notes = request.getParameter("book_notes");
		String status = request.getParameter("book_status");
		String quantitytxt = request.getParameter("book_quantity");
		int quantity = Integer.parseInt(quantitytxt);

		// Create a new Book object with the uploaded image URL
		Book editBook = new Book(name, daoC.getCategoryById(category), author, image, price, notes, status, quantity);
		editBook.setBook_id(id);
		if (new BookDAOHandler().updateBook(editBook)) {
			response.sendRedirect("manage-product");
		} else {
			response.sendRedirect("views/admin/FormAdd.jsp");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
