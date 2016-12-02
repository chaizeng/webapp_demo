package com.jn;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
	

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("username");
		resp.setContentType("text/html");
		HttpSession session = req.getSession();
		if(session.isNew()) {
			System.out.println("session is new");
		} else {
			System.out.println("session is exist");
		}
		resp.addCookie(new Cookie("username", userName));
		session.setAttribute("user", userName);
//		resp.sendRedirect(req.getContextPath() + "/welcome.jsp");
		resp.sendRedirect(resp.encodeRedirectURL(req.getContextPath() + "/welcome.jsp"));
//		req.getRequestDispatcher("/welcome.jsp").forward(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
