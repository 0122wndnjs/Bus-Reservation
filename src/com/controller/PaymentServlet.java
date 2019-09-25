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
import com.model.PaymentBean;
import com.model.RegisterBean;

public class PaymentServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		 resp.setContentType("text/html");
		 PrintWriter out= resp.getWriter();
		 
		 String name=req.getParameter("fname");
		 String email=req.getParameter("email");
		 String address=req.getParameter("adr");
		 String city=req.getParameter("city");
		 String state=req.getParameter("state");
		 String zip=req.getParameter("zip");
		 
		 String nameOnCard=req.getParameter("cname");
		 String cardNumber=req.getParameter("cnumber");
		 String expMonth=req.getParameter("expmonth");
		 String expYear=req.getParameter("expYear");
		 String cvv=req.getParameter("cvv");
		 
		 //set the values to the Model attributes
		 PaymentBean payment=new PaymentBean();// call to model layer
		 payment.setName(name);
		 payment.setEmail(email);
		 payment.setAddress(address);
		 payment.setCity(city);
		 payment.setState(state);
		 payment.setZip(zip);
		 
		 payment.setNameOnCard(nameOnCard);
		 payment.setCardNumber(cardNumber);
		 payment.setExpMonth(expMonth);
		 payment.setExpYear(expYear);
		 payment.setCvv(cvv);

		 //create the session and add the attributes in session
		 HttpSession session=req.getSession();
		 session.setAttribute("name", name);

		 try {
			Connection con=ConnectionClass.getConnection();
			System.out.println("Connected");
			Statement stmt = con.createStatement();
			String query="insert into payment values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, address);
			ps.setString(4, city);
			ps.setString(5, state);
			ps.setString(6, zip);
			ps.setString(7, nameOnCard);
			ps.setString(8, cardNumber);
			ps.setString(9, expMonth);
			ps.setString(10, expYear);
			ps.setString(11, cvv);
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
