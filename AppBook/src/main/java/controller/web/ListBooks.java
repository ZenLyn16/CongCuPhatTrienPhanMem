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
 * Servlet implementation class ListBooks
 */
@WebServlet("/list-books")
public class ListBooks extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListBooks() {
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
//		Get total books
		int count = new BookDAOHandler().getTotalBooks();
		int endPage = count / 12;
		if (count % 12 != 0) {
			endPage++;
		}
		request.setAttribute("endP", endPage);

		String indexPage = request.getParameter("index");
		if (indexPage == null) {
			indexPage = "1";
		}
		int index = Integer.parseInt(indexPage);
		ArrayList<Book> items = new BookDAOHandler().pagingBooks(index);
		request.setAttribute("items", items);

//		Load Category
		ArrayList<Category> itemsC = new CategoryDAOHandler().getCategorys((byte) 20);
		request.setAttribute("itemsC", itemsC);

//		Css paging button
		request.setAttribute("tag", index);

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
