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
 * Servlet implementation class AddAccountController
 */
@WebServlet("/add-account")
public class AddAccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddAccountController() {
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

		String account_username = request.getParameter("account_username");
		String account_password = request.getParameter("account_password");
		String access_sell = request.getParameter("access_sell");
		String access_admin = request.getParameter("access_admin");
		short sell = 1, admin = 1;

		if (access_sell == null) {
			sell = 0;
		}

		if (access_admin == null) {
			admin = 0;
		}

		Account newAccount = new Account(account_username, account_password, sell, admin);
		new AccountDAOHandler().addAccount2(newAccount);
		response.sendRedirect("manage-account");
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
