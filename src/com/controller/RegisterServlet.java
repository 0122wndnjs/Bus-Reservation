package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ConnectionClass;
import com.model.RegisterBean;

public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();

		String name = req.getParameter("name");
		String add = req.getParameter("email");
		String pass = req.getParameter("password");

		// set the values to the Model attributes
		RegisterBean register = new RegisterBean();// call to model layer
		register.setUsername(name);
		register.setUseraddress(add);
		register.setUserpassword(pass);

		// create the session and add the attributes in session
		HttpSession session = req.getSession();
		session.setAttribute("name", name);
		req.setAttribute("errorMessage", "Invalid username or password");

		try {
			Connection con = ConnectionClass.getConnection();
			System.out.println("Connected");
			Statement stmt = con.createStatement();
			String query = "insert into buslogin values(?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, add);
			ps.setString(3, pass);
			ps.executeUpdate();
			System.out.println(query);
			resp.sendRedirect("login.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

//		 

	}

}
