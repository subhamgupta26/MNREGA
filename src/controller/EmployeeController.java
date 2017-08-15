package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.EmployeeBean;
import dao.CreateEmployeeDAOImpl;

@WebServlet("/EmployeeController")
public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String dbStatus;
	CreateEmployeeDAOImpl eud = new CreateEmployeeDAOImpl();

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		EmployeeBean eBean = new EmployeeBean();
		eBean.setFirstName(request.getParameter("firstName"));
		eBean.setLastName(request.getParameter("lastName"));
		eBean.setPhone(request.getParameter("phone"));
		eBean.setAge(request.getParameter("age"));
		eBean.setState(request.getParameter("state"));
		eBean.setDistrict(request.getParameter("district"));
		eBean.setVillage(request.getParameter("village"));
		eBean.setAddress(request.getParameter("address"));
		eBean.setAdharNo(request.getParameter("aadharNo"));
		eBean.setBankName(request.getParameter("bankName"));
		eBean.setAccNo(request.getParameter("accNo"));
		/********************* SAVE ******************************/
		String btnSave = request.getParameter("btnSave");
		if (btnSave != null) {
			dbStatus = eud.saveEmployee(eBean);
			if (!dbStatus.equals(null)) {
				HttpSession session = request.getSession();
				session.setAttribute("dbStatus", dbStatus);
				response.sendRedirect("createEmployee.jsp");
			}
		}
		/************** DISPLAY *****************/

		String btnDisplay = request.getParameter("btnDisplay");
		if (btnDisplay != null) {
			List<EmployeeBean> eList = eud.displayEmployee();
			if (eList != null) {
				getServletContext().setAttribute("eList", eList);
				RequestDispatcher rd = request
						.getRequestDispatcher("displayEmployee.jsp");
				rd.forward(request, response);
			}
		}
	}

}
