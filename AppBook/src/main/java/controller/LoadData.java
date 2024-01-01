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
 * Servlet implementation class LoadData
 */
@WebServlet("/load")
public class LoadData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String CONTENT_TYPE = "text/html;charset=utf-8";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoadData() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType(CONTENT_TYPE);

		String indexPage = request.getParameter("index");
		ArrayList<Book> items;
		if (indexPage == null) {
			items = new BookDAOHandler().getBooks((byte) 12);

		} else {
			int index = Integer.parseInt(indexPage);
			items = new BookDAOHandler().pagingBooks(index);
		}
		request.setAttribute("items", items);

//		Load Category
		ArrayList<Category> itemsC = new CategoryDAOHandler().getCategorys((byte) 20);
		request.setAttribute("itemsC", itemsC);

//		Get total books
		int count = new BookDAOHandler().getTotalBooks();
		int endPage = count / 12;
		if (count / 12 != 0) {
			endPage++;
		}
		request.setAttribute("endP", endPage);

//		Back to Home
		request.getRequestDispatcher("Home.jsp").forward(request, response);
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
