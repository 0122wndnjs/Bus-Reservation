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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ConnectionClass;
import com.model.ReservationBean;

public class BusListServlet extends HttpServlet {

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

		ReservationBean reservation = new ReservationBean();// call to model layer

		reservation.setBusprice(busprice);
		reservation.setCityfrom(cityfrom);
		reservation.setCityto(cityto);
		reservation.setStart_at(start_at);
		reservation.setEnd_at(end_at);

		busprice = reservation.getBusprice();
		cityfrom = reservation.getCityfrom();
		cityto = reservation.getCityto();
		start_at = reservation.getStart_at();
		end_at = reservation.getEnd_at();

		HashMap userDetails = new HashMap();
		userDetails.put("busprice", busprice);
		userDetails.put("cityfrom", cityfrom);
		userDetails.put("cityto", cityto);
		userDetails.put("start_at", start_at);
		userDetails.put("end_at", end_at);

		HttpSession session = req.getSession();
		session.setAttribute("details", userDetails);

		ArrayList<ReservationBean> rsv = new ArrayList<ReservationBean>();

		String query = "select * from BusSchedule";
		Connection con = ConnectionClass.getConnection();
		System.out.println("Connected");

		try {
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();

			System.out.println(query);
			while (rs.next()) {
				String p = rs.getString(1);
				String cf = rs.getString(2);
				String ct = rs.getString(3);
				String sa = rs.getString(4);
				String ea = rs.getString(5);
				System.out.println(p + cf + ct + sa + ea);
				rsv.add(new ReservationBean(p, cf, ct, sa, ea));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		for (ReservationBean s : rsv) {
			System.out.println(s);
		}

		req.setAttribute("data", rsv);
		RequestDispatcher dispatcher = req.getRequestDispatcher("Schedule.jsp");
		dispatcher.forward(req, resp);
	}
}
