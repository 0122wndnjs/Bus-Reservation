package com.controller;

import java.io.IOException;
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
import com.model.SeatBean;

public class SeatServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String one=req.getParameter("one");
//		String two=req.getParameter("two");
//		String three=req.getParameter("three");
//		String four=req.getParameter("four");
//		String five=req.getParameter("five");
//		String six=req.getParameter("six");
//		String seven=req.getParameter("seven");
//		String eight=req.getParameter("eight");
//		String nine=req.getParameter("nine");
//		String ten=req.getParameter("ten");
//		String eleven=req.getParameter("eleven");
//		String twelve=req.getParameter("twelve");
//		String thirteen=req.getParameter("thirteen");
//		String fourteen=req.getParameter("fourteen");
//		String fifteen=req.getParameter("fifteen");
//		String sixteen=req.getParameter("sixteen");
//		String seventeen=req.getParameter("seventeen");
//		String eighteen=req.getParameter("eighteen");
//		String ninteen=req.getParameter("ninteen");
//		String twnety=req.getParameter("twnety");
//		String twentyone=req.getParameter("twentyone");
//		String twentytwo=req.getParameter("twentytwo");
//		String twnetythree=req.getParameter("twnetythree");
//		String twentyfour=req.getParameter("twentyfour");
//		String twnetyfive=req.getParameter("twnetyfive");
//		String twnetysix=req.getParameter("twnetysix");
//		String twnetyseven=req.getParameter("twnetyseven");
//		String twnetyeight=req.getParameter("twnetyeight");
//		String twentynine=req.getParameter("twentynine");
//		String thirty=req.getParameter("thirty");
//		String thirtyone=req.getParameter("thirtyone");
//		String thirtytwo=req.getParameter("thirtyone");
//		String thirtythree=req.getParameter("thirtythree");
//		String thirtyfour=req.getParameter("thirtyfour");
//		String thirtyfive=req.getParameter("thirtyfive");
//		String thirtysix=req.getParameter("thirtysix");
//		String thirtyseven=req.getParameter("thirtyseven");
//		String thirtyeight=req.getParameter("thirtyeight");
//		String thirtynine=req.getParameter("thirtynine");
//		String forty=req.getParameter("forty");

		String seatNumber = req.getParameter("seatNumber");

		HashMap<String, String> userDetails = new HashMap<String, String>();
		userDetails.put("seatNumber", seatNumber);

		HttpSession session = req.getSession();
		session.setAttribute("details", seatNumber);

		ArrayList<SeatBean> st = new ArrayList<SeatBean>();

		String query = "select * from Seats where seatNumber='" + seatNumber + "'";
		Connection con = ConnectionClass.getConnection();
		System.out.println("Connected");

		try {
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();

			System.out.println(query);
			while (rs.next()) {
				int se = rs.getInt(1);
				System.out.println(se);
				st.add(new SeatBean());

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		for (SeatBean s : st) {
			System.out.println(s);
		}

		req.setAttribute("data", st);
		RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
		dispatcher.forward(req, resp);

	}
}
