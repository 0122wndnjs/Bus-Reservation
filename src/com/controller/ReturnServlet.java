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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ConnectionClass;
import com.model.ReservationBean;

public class ReturnServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();

		String busprice = req.getParameter("busprice");
		String cityfrom = req.getParameter("cityfromR");
		String cityto = req.getParameter("citytoR");
		String start_at = req.getParameter("start_at");
		String end_at = req.getParameter("end_at");

		ReservationBean reservation = new ReservationBean();// call to model layer

		reservation.setBusprice(busprice);
		reservation.setCityfrom(cityfrom);
		reservation.setCityto(cityto);
		reservation.setStart_at(start_at);
		reservation.setEnd_at(end_at);

//		busprice = reservation.getBusprice();
//		cityfrom = reservation.getCityfrom();
//		cityto = reservation.getCityto();
//		start_at = reservation.getStart_at();
//		end_at = reservation.getEnd_at();

		HashMap userDetails = new HashMap();
		userDetails.put("busprice", busprice);
		userDetails.put("cityfrom", cityfrom);
		userDetails.put("cityto", cityto);
		userDetails.put("start_at", start_at);
		userDetails.put("end_at", end_at);

		HttpSession session = req.getSession();
		session.setAttribute("details", userDetails);

		ArrayList<ReservationBean> rsv = new ArrayList<ReservationBean>();

		String query = "select * from BusSchedule where cityfrom='" + cityto + "' and cityto='" + cityfrom + "'";
		Connection con = ConnectionClass.getConnection();
		System.out.println("Connected");

		String p = null;
		String cf = null;
		String ct = null;
		String sa = null;
		String ea = null;

		try {
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();

			System.out.println(query);
			while (rs.next()) {
				p = rs.getString(1);
				ct = rs.getString(2);
				cf = rs.getString(3);
				sa = rs.getString(4);
				ea = rs.getString(5);
				System.out.println(p + ct + cf + sa + ea);
				rsv.add(new ReservationBean(p, ct, cf, sa, ea));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		for (ReservationBean s : rsv) {
			System.out.println(s);
		}

		req.setAttribute("data", rsv);
		req.setAttribute("dataR", rsv);
		RequestDispatcher dispatcher = req.getRequestDispatcher("return.jsp");
		dispatcher.forward(req, resp);
	}

}
