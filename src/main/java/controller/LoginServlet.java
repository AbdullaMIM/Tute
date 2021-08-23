package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtil.CustomerDBUtil;
import model.Customer;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	   
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		
		String userName=request.getParameter("username");
	    String password=request.getParameter("pwd");
		
	   
	    
	    boolean result;
		result=CustomerDBUtil.validateCustomer(userName,password);
		
		
		
		
		if(result==true) {
			
			  List<Customer> cusDetails=CustomerDBUtil.getCustomer(userName);
	         
	    	  request.setAttribute("customerDetails",cusDetails);
	    	
	    	  RequestDispatcher dis=request.getRequestDispatcher("Profile.jsp");
              dis.forward(request, response);	
			
		}
		
		
		else {
			
			  out.println("<script type='text/javascript'>");
			  out.println("alert('Your username or password is incorrect');");
			  out.println("location='Login.jsp'");
			  out.println("</script>");
		}
		
		
	}

}
