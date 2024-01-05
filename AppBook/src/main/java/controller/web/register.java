package controller.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.dao.AccountDAOHandler;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public register() {
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
		AccountDAOHandler dao = new AccountDAOHandler();
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		String rePass = request.getParameter("rePass");

		if (!pass.equals(rePass)) {
			request.setAttribute("wrongRePass", "*Nhập lại mật khẩu không khớp");
			request.setAttribute("user", user);
			request.setAttribute("pass", pass);
			request.setAttribute("rePass", rePass);
			request.getRequestDispatcher("Register.jsp").forward(request, response);
		} else {
			if (dao.checkUserName(user) == null) {
				dao.addAccount(user, pass);
				response.sendRedirect("list-books");
			} else {
				request.setAttribute("userExist", "*Tên đăng nhập đã tồn tại");
				request.setAttribute("user", user);
				request.setAttribute("pass", pass);
				request.setAttribute("rePass", rePass);
				request.getRequestDispatcher("views/web/Register.jsp").forward(request, response);
			}
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
