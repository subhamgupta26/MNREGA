package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.SignInDaoImpl;
import dao.signInDAO;
import model.SignInBean;


@WebServlet("/SignInController")
public class SignInController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	SignInBean sBean=new SignInBean();
	signInDAO sid= new SignInDaoImpl();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		sBean.setUsername(request.getParameter("user"));
		sBean.setPassword(request.getParameter("password"));
		sBean.setRole(request.getParameter("role"));

		sBean=sid.logIn(sBean);
		if(sBean.isValid() && sBean.getRole().equals("BDO")){
		
			HttpSession session=request.getSession(true);
			session.setAttribute("loggedUser",sBean);
			response.sendRedirect("BDOArea/indexBDO.jsp");
		}
	
		else if(sBean.isValid() && sBean.getRole().equals("GramPanchayat")){
		
			HttpSession session=request.getSession(true);
			session.setAttribute("loggedUser",sBean);
			response.sendRedirect("GramPanchayatArea/gramPanchayat.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}
	}
	
}
