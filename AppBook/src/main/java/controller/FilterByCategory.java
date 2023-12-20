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
 * Servlet implementation class FilterByCategory
 */
@WebServlet("/filter-by-category")
public class FilterByCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FilterByCategory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=\"utf-8\"");
//		Get id from Home
		int category_id = Integer.parseInt(request.getParameter("category_id"));
		
//		Filter book by category
		ArrayList<Book> items = new BookDAOHandler().getBooksByCategory(category_id);
		request.setAttribute("items", items);
		
//		Load Category
		ArrayList<Category> itemsC = new CategoryDAOHandler().getCategorys((byte)20);
		request.setAttribute("itemsC", itemsC);
		
//		Back to Home
		request.getRequestDispatcher("Home.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
