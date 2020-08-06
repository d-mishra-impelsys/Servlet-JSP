package com.impelsys.controller;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.impelsys.dao.*;
import com.impelsys.model.*;



@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		RequestDispatcher rd;
		String selname="";   // 12,13
		
		HttpSession session=request.getSession();  
		if(session.getAttribute("stroll")==null)
		  session.setAttribute("stroll",selname);
		 
			  
			

  
  
		
		
		ArrayList<String> allbranch;
		allbranch= StudentDAO.getAllBranch();
		request.setAttribute("allbranch", allbranch);
		String val="";
		ArrayList<StudentModel> allStudents;
		//if(request.getParameterMap().containsKey("catg"))
		if(request.getParameter("catg")!=null)
		{   
			val=request.getParameter("category");
			allStudents= StudentDAO.getStudentsByBranch(val);
			request.setAttribute("allStudent", allStudents);			
		}	
		else if(request.getParameter("add")!=null)
		{
			
			if(request.getParameterValues("choose")!=null)
			{
			String[] selected=request.getParameterValues("choose");
			for(String s: selected)
			{
				selname=selname+s+",";
			}
			
			if(session.getAttribute("stroll")!=null)
				{
				String temp= (String)session.getAttribute("stroll");  
				selname=temp+selname;
				session.setAttribute("stroll",selname);
				}
			 
			}
			else
			{
				request.setAttribute("errormsg", "Please choose names.");	
			}
		}
		
		
		
		rd=request.getRequestDispatcher("ShowProduct.jsp");		    
 	    rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
