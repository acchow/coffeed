package com.mie.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mie.dao.ProductDao;
import com.mie.model.Product;

public class ProductController extends HttpServlet {
	/**
	 * This class handles all insert/edit/list functions of the servlet.
	 * 
	 * These are variables that lead to the appropriate JSP pages. INSERT leads
	 * to the Add A Student page. EDIT leads to the Edit A Student page.
	 * LIST_STUDENT_PUBLIC leads to the public listing of students.
	 * LIST_STUDENT_ADMIN leads to the admin-only listing of students (for them
	 * to modify student information).
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static String WISHLIST = "/Wishlist.jsp";

	private ProductDao dao;

	/**
	 * Constructor for this class.
	 */
	public ProductController() {
		super();
		dao = new ProductDao();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		/**
		 * This class retrieves the appropriate 'action' found on the JSP pages:
		 * 
		 * - delete will direct the servlet to let the user delete a student in
		 * the database. - insert will direct the servlet to let the user add a
		 * new student to the database. - edit will direct the servlet to let
		 * the user edit student information in the database. - listStudent will
		 * direct the servlet to the public listing of all students in the
		 * database. - listStudentAdmin will direct the servlet to the admin
		 * listing of all students in the database.
		 */
		String forward = "";
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("delete")) {
			int productId = Integer.parseInt(request.getParameter("productId"));
			int userID = Integer.parseInt(request.getParameter("userID"));
			dao.unsaveProduct(productId, userID);
			forward = WISHLIST;
			request.setAttribute("Products", dao.getAllProducts());
		} 
		else if (action.equalsIgnoreCase("wishlist")) {
			forward = WISHLIST;
			request.setAttribute("Products", dao.getAllProducts());
		} 

		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	
}