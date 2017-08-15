package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProjectDaoImpl;
import dao.projectDAO;
import model.ProjectBean;


@WebServlet("/ProjectController")
public class ProjectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ProjectBean pBean=new ProjectBean();
	projectDAO prd=new ProjectDaoImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String btnSave=request.getParameter("btnSave");
		if(btnSave != null){
			String dbStatus;
			pBean.setProjectName(request.getParameter("projectname"));
			pBean.setMaxEmployee(Integer.parseInt(request.getParameter("max")));
			pBean.setPurpose(request.getParameter("purpose"));
			pBean.setDuration(Integer.parseInt(request.getParameter("duration")));
			pBean.setAssigned_to(request.getParameter("assgn"));
			pBean.setMoneyAllocated(Integer.parseInt(request.getParameter("money")));
			pBean.setDateAllocated(Date.valueOf(request.getParameter("date")));
			pBean.setDistrict(request.getParameter("district"));
			pBean.setVillage(request.getParameter("village"));
			
			dbStatus=prd.save(pBean);
			if(dbStatus !=null){
				
				HttpSession session = request.getSession();
				session.setAttribute("dbStatus", dbStatus);
				response.sendRedirect("project.jsp");
			}
			
			
			
		}
		
		String btnSearch=request.getParameter("btnSearch");
		if(btnSearch!=null){
			ArrayList<ProjectBean> pList=new ArrayList<ProjectBean>();
			String projectName=request.getParameter("projectName");
			pList=prd.searchProject(projectName);
			if(pList != null){
				HttpSession session=request.getSession(true);
				session.setAttribute("pList",pList);
				response.sendRedirect("projectDetails.jsp");
			}
		}
	}

}
