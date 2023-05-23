package com.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class errorHandler
 */
public class errorHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public errorHandler() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		try (PrintWriter writer = response.getWriter()) {
			writer.write("<html><head><title>Error description</title></head><body>");
			writer.write("<h2>Error description</h2>");
			writer.write("<ul>");
			Arrays.asList("ERROR_STATUS_CODE", "ERROR_EXCEPTION_TYPE", "ERROR_MESSAGE")
					.forEach(e -> writer.write("<li>" + e + ":" + request.getAttribute(e) + " </li>"));
			writer.write("</ul>");
			writer.write("</html></body>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
