package adminController;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.GuestVO;
import model.ReservationsVO;
import model.StudioResDAO;


@WebServlet("/admin/adminSearchResAll")
public class AdminSearchResAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StudioResDAO dao = new StudioResDAO();
		List<ReservationsVO> reservationlist = dao.selectReservationsAll();
		request.setAttribute("reservationlist", reservationlist);
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("adminSearchResAll.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("work", "resv"); 
		response.sendRedirect("adminMain");
	}

}
