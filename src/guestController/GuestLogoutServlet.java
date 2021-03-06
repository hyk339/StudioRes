package guestController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/guest/logout")
public class GuestLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String before_address = request.getHeader("Referer");
		session.removeAttribute("guest_id");
		session.removeAttribute("guest_pw");
		session.removeAttribute("guest_name");
		session.removeAttribute("guest_no");
		
		response.sendRedirect(before_address);
	}
}
