package com.teszt.rds;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddServlet extends HttpServlet {
 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
	 int a=Integer.parseInt(req.getParameter("num1"));
	 int b=Integer.parseInt(req.getParameter("num2"));
	 int k=a+b;
	 PrintWriter out=res.getWriter();
	 out.println("k="+k);
 }
}
