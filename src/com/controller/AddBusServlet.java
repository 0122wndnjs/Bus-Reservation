package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ConnectionClass;
import com.model.AddBusBean;

public class AddBusServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();

		String busprice = req.getParameter("busprice");
		String cityfrom = req.getParameter("cityfrom");
		String cityto = req.getParameter("cityto");
		String start_at = req.getParameter("start_at");
		String end_at = req.getParameter("end_at");

		// set the values to the Model attributes
		AddBusBean addBus = new AddBusBean();// call to model layer
		addBus.setBusprice(busprice);
		addBus.setCityfrom(cityfrom);
		addBus.setCityto(cityto);
		addBus.setStart_at(start_at);
		addBus.setEnd_at(end_at);

		// create the session and add the attributes in session
		HttpSession session = req.getSession();
		session.setAttribute("busprice", busprice);
//		req.setAttribute("errorMessage", "Invalid username or password");
		try {
			Connection con = ConnectionClass.getConnection();
			System.out.println("Connected");
			Statement stmt = con.createStatement();
			String query = "insert into BusSchedule values(?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, busprice);
			ps.setString(2, cityfrom);
			ps.setString(3, cityto);
			ps.setString(4, start_at);
			ps.setString(5, end_at);
			ps.executeUpdate();
			System.out.println(query);
			resp.sendRedirect("adminMain.jsp");
//			req.getRequestDispatcher("AddBus.jsp").forward(req, resp);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
