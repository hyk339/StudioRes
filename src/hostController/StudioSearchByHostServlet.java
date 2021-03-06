package hostController;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.StudioResDAO;
import model.StudioVO;

@WebServlet("/host/hostSearchStudio")
public class StudioSearchByHostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("host_no") == null) {
			response.sendRedirect("hostLogin");
			return;
		}
		StudioResDAO dao = new StudioResDAO();
		List<StudioVO> studiolist = dao.selectStudioByHostId(String.valueOf(session.getAttribute("host_id")));
		request.setAttribute("studiolist", studiolist);	
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("studioSearchByHost.jsp");
		rd.forward(request, response);
	}
}
