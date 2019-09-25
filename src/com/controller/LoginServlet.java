package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ConnectionClass;
import com.model.LoginBean;
import com.model.RegisterBean;

public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		 resp.setContentType("text/html");
		 PrintWriter out= resp.getWriter();
		 
		 String name=req.getParameter("name");
		 String add=req.getParameter("email");
		 String pass=req.getParameter("password");
//		 Connection con=null;
		 System.out.println(name);
		 //set the values to the Model attributes
		 LoginBean login=new LoginBean();// call to model layer
		 
		 login.setUsername(name);
		 
		 login.setUseraddress(add);
		 
		 login.setUserpassword(pass);
	
		 //get the details from the Model Class
		 String nm=login.getUsername();
		 String ad=login.getUseraddress();
		 
		 //Add the details in the HashMap
		 HashMap map=new HashMap();
		 map.put("username", nm);
		 map.put("useraddress", ad);
		 
		 //create the session and add the attributes in session
		 HttpSession session=req.getSession();
		 session.setAttribute("details", map);
		 
		 req.setAttribute("userdetails", login);
		 req.setAttribute("errorMessage", "Invalid username or password");
		 
		 // call the database layer
		 
		 String query="select username,useraddress,userpassword from buslogin where username='"+name+"' and useraddress='"+add+"' and userpassword='"+pass+"'";
		 Connection con=ConnectionClass.getConnection();
		 System.out.println("Connected");
		 
		 try {
			PreparedStatement ps=con.prepareStatement(query);
//			ps.setString(1, name);
//			ps.setString(2, add);
//			ps.setString(3, pass);
			ResultSet rs = ps.executeQuery();
			System.out.println(query);
			// use the request dispatcher to dispatch the request
			if(rs.next() && !(name.equals("admin") && pass.equals("admin"))) {
//				name = rs.getString(1);
			 RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
			 rd.forward(req, resp);
			 System.out.println("Login Success.");
			 
			 } else if(name.equals("admin") && pass.equals("admin")) {
				 RequestDispatcher rd=req.getRequestDispatcher("adminMain.jsp");
				 rd.forward(req, resp);
				 System.out.println("Login Success.");
		 	} else {
//				 RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
//				 rd.forward(req, resp);
				 req.getRequestDispatcher("login.jsp").forward(req, resp);
			 }
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	

}
