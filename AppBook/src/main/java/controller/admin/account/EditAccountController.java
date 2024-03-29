package controller.admin.account;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.dao.AccountDAOHandler;
import model.Account;

/**
 * Servlet implementation class EditAccountController
 */
@WebServlet("/edit-account")
public class EditAccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditAccountController() {
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
		int id = Integer.parseInt(request.getParameter("account_id"));

//		Load account by id
		Account acc = new AccountDAOHandler().getAccountById(id);
		request.setAttribute("acc", acc);

		request.getRequestDispatcher("views/admin/FormEditAccount.jsp").forward(request, response);
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
