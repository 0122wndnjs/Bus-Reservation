package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ConnectionClass;
import com.model.CartBean;
import com.model.ReservationBean;

public class CartServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();

		String busprice = req.getParameter("busprice");
		String cityfrom = req.getParameter("cityfrom");
		String cityto = req.getParameter("cityto");
		String start_at = req.getParameter("start_at");
		String end_at = req.getParameter("end_at");
		String seats = req.getParameter("seats");
//
//		CartBean cart = new CartBean();// call to model layer
//
//		cart.setBusprice(busprice);
//		cart.setCityfrom(cityfrom);
//		cart.setCityto(cityto);
//		cart.setStart_at(start_at);
//		cart.setEnd_at(end_at);
//		cart.setSeats(seats);
//
//		busprice = cart.getBusprice();
//		cityfrom = cart.getCityfrom();
//		cityto = cart.getCityto();
//		start_at = cart.getStart_at();
//		end_at = cart.getEnd_at();
//		seats = cart.getSeats();
//
//		HashMap userDetails = new HashMap();
//		userDetails.put("busprice", busprice);
//		userDetails.put("cityfrom", cityfrom);
//		userDetails.put("cityto", cityto);
//		userDetails.put("start_at", start_at);
//		userDetails.put("end_at", end_at);
//		userDetails.put("seats", seats);
//
//		HttpSession session = req.getSession();
//		session.setAttribute("details", userDetails);
//
//		ArrayList<CartBean> c = new ArrayList<CartBean>();
//
//		String query = "insert into Confirmation values(?,?,?,?,?,?)";
//		Connection con = ConnectionClass.getConnection();
//		System.out.println("Connected");
//
//		try {
//			PreparedStatement ps = con.prepareStatement(query);
//			ps.setString(1, busprice);
//			ps.setString(2, cityfrom);
//			ps.setString(3, cityto);
//			ps.setString(4, start_at);
//			ps.setString(5, end_at);
//			ps.setString(6, seats);
////			System.out.println(p + cf + ct + sa + ea + s);
////			c.add(new CartBean(p, cf, ct, sa, ea, s));
//			System.out.println(query);
//			ps.executeUpdate();
//			resp.sendRedirect("payment.jsp");
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
////		for (CartBean s : c) {
////			System.out.println(s);
////		}
////
//		req.setAttribute("data", c);
//		RequestDispatcher dispatcher = req.getRequestDispatcher("Schedule.jsp");
//		dispatcher.forward(req, resp);
	}
}
