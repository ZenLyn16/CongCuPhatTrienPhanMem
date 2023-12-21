package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.BookDAOHandler;
import database.CategoryDAOHandler;
import model.Book;
import model.Category;

/**
 * Servlet implementation class EditBookControl
 */
@WebServlet("/edit-book")
public class EditBookControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditBookControl() {
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
//		Get id from Home
		int id = Integer.parseInt(request.getParameter("book_id"));

		ArrayList<Category> iteamC = new CategoryDAOHandler().getCategorys((byte) 20);
		request.setAttribute("iteamC", iteamC);

//		Load book by id
		Book book = new BookDAOHandler().getBookById(id);
		request.setAttribute("book", book);

		request.getRequestDispatcher("FormEditBook.jsp").forward(request, response);
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
