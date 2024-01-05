package controller.web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.dao.BookDAOHandler;
import database.dao.CategoryDAOHandler;
import model.Book;
import model.Category;

/**
 * Servlet implementation class Search
 */
@WebServlet("/search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Search() {
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
//		Get text search from Home
		String txtsearch = request.getParameter("search");
		request.setAttribute("txtsearch", txtsearch);

//		Get book by text search
		ArrayList<Book> items = new BookDAOHandler().getBooksByName(txtsearch);
		request.setAttribute("items", items);

//		Load Category
		ArrayList<Category> itemsC = new CategoryDAOHandler().getCategorys((byte) 20);
		request.setAttribute("itemsC", itemsC);

//		Go back Home
		request.getRequestDispatcher("views/web/Home.jsp").forward(request, response);
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
