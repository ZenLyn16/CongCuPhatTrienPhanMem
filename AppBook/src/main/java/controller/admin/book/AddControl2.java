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
 * Servlet implementation class AddControl2
 */
@WebServlet("/add-control-2")
public class AddControl2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddControl2() {
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

		String name = request.getParameter("book_name");
		String categorytxt = request.getParameter("book_category");
		if (categorytxt.equals("Loại sách")) {
			request.setAttribute("messNotSelectCate", "Bạn chưa chọn loại sách");
			request.getRequestDispatcher("views/admin/FormAdd.jsp").forward(request, response);
		}
		int category = Integer.parseInt(categorytxt);
		String author = request.getParameter("book_author");
		String image = request.getParameter("book_image");
		String pricetxt = request.getParameter("book_price");
		double price = Double.parseDouble(pricetxt);
		String notes = request.getParameter("book_notes");
		String status = request.getParameter("book_status");
		String quantitytxt = request.getParameter("book_quantity");
		int quantity = Integer.parseInt(quantitytxt);

		Book newBook = new Book(name, daoC.getCategoryById(category), author, image, price, notes, status, quantity);
		new BookDAOHandler().addBook(newBook);
		response.sendRedirect("manage-product");
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
