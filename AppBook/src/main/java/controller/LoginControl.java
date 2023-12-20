package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.AccountDAOHandler;
import model.Account;

/**
 * Servlet implementation class LoginControl
 */
@WebServlet("/login")
public class LoginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=\"utf-8\"");
		AccountDAOHandler dao = new AccountDAOHandler();
		String username = request.getParameter("user");
		String password = request.getParameter("pass");
		Account account = dao.checkLogin(username, password);
		
		if (account == null) {
			request.setAttribute("mess", "*Sai tên đăng nhập hoặc mật khẩu");
			request.setAttribute("user", username);
			request.setAttribute("pass", password);
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("account", account);
			response.sendRedirect("load");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
