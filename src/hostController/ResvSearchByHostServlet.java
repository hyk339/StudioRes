package hostController;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ReservationsVO;
import model.StudioResDAO;
import model.StudioVO;


@WebServlet("/host/resvSearchByHost")
public class ResvSearchByHostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("host_no") == null) {
			response.sendRedirect("hostLogin");
			return;
		}
		StudioResDAO dao = new StudioResDAO();
		System.out.println("예약리리스트 서블릿 : "+request.getParameter("studio_no"));
		
		int studio_no = Integer.parseInt(request.getParameter("studio_no"));
		List<ReservationsVO> originReslist = dao.selectReservationsAll();
		List<ReservationsVO> filteredReslist = new ArrayList<ReservationsVO>();
		for(ReservationsVO vo:originReslist) {
			if(vo.getStudio_no()==studio_no) {
				filteredReslist.add(vo);
			}
		}
		System.out.println("등록??");
		request.setAttribute("reservationlist", filteredReslist);
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("resvSearchByHost.jsp");
		rd.forward(request, response);
	}

}
