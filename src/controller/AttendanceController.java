package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AttendanceDAO;
import dao.AttendanceDAOImpl;
import model.AttendanceBean;

@WebServlet("/AttendanceController")
public class AttendanceController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String dbStatus;
	AttendanceDAO ad = new AttendanceDAOImpl();

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// AttendanceBean aBean = new AttendanceBean();

		/********** Display Employee List ********/
		String btnDisplay = request.getParameter("btnAttendance");
		if (btnDisplay != null) {
			String project = request.getParameter("project");
			ArrayList alist = ad.displayEmployee(project);
			if (alist != null) {
				getServletContext().setAttribute("alist", alist);
				RequestDispatcher rd = request
						.getRequestDispatcher("attendance.jsp");
				rd.forward(request, response);
			}
		}
		/********** Display Project List ********/
		String btnVillageSub = request.getParameter("btnVillageSub");
		if (btnVillageSub != null) {
			String village = request.getParameter("village");
			if (village != null) {
				getServletContext().setAttribute("village", village);
				RequestDispatcher rd = request
						.getRequestDispatcher("attendance.jsp");
				rd.forward(request, response);
			}
		}

		/********** Display Village List ********/
		String btnDistrictsub = request.getParameter("btnDistrictSub");
		if (btnDistrictsub != null) {
			String district = request.getParameter("district");
			System.out.println(district);
			if (district != null) {
				getServletContext().setAttribute("district", district);
				RequestDispatcher rd = request
						.getRequestDispatcher("attendance.jsp");
				rd.forward(request, response);
			}
		}
		/************** Attendance Updating ***********/
		String att[] = request.getParameterValues("attendance");
		if (att != null) {
			for (int i = 0; i < att.length; i++) {
				dbStatus = ad.updateAttendance(Integer.parseInt(att[i]));
			}
			if (!dbStatus.equals(null)) {
				HttpSession session = request.getSession();
				session.setAttribute("dbStatus", dbStatus);
				response.sendRedirect("attendance.jsp");
			}
		}
	}
}
