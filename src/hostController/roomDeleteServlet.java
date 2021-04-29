package hostController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.StudioResDAO;

/**
 * Servlet implementation class roomDeleteServlet
 */
@WebServlet("/host/roomDelete")
public class roomDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StudioResDAO dao = new StudioResDAO();
		int room_no = Integer.parseInt(request.getParameter("room_no"));
		dao.deleteRoom(room_no);
		response.sendRedirect("hostSearchStudio");
		
	}


}