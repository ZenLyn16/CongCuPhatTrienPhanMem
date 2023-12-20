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
 * Servlet implementation class LoadById
 */
@WebServlet("/load-by-id")
public class LoadById extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadById() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=\"utf-8\"");
//		Get id from Home
		int id = Integer.parseInt(request.getParameter("book_id"));
		
//		Load book by id
		Book book = new BookDAOHandler().getBookById(id);
		request.setAttribute("book", book);
		
//		Load Category
		ArrayList<Category> itemsC = new CategoryDAOHandler().getCategorys((byte)20);
		request.setAttribute("itemsC", itemsC);
		
		request.getRequestDispatcher("Detail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
