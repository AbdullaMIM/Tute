package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtil.CustomerDBUtil;


@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		 //1.Get all customer details from Signupjsp.jsp and store in the variables
	      String firstName=request.getParameter("fName");
	      String lastName=request.getParameter("lName");
	      String mobileNo=request.getParameter("ttmobile");
	      String email=request.getParameter("email");
	      String gender=request.getParameter("gender");
	      String address=request.getParameter("address");
	      String userName=request.getParameter("userID");
	      String password=request.getParameter("pwd");
			 
	     
	    //2.pass all customer data to the customerDBUtil.java class - insertCustomer method and get boolean result
		    boolean result;
		    result=CustomerDBUtil.insertCustomer(firstName,lastName,mobileNo,email,gender,address,userName,password);
		  
	      
		 //3.If result is true database connection is success(data inserted successfully to database),Use RequestDispatcher class to redirect to the another page(SignupSuccess.jsp)
			 if(result==true) {
				 
				 RequestDispatcher dis=request.getRequestDispatcher("SignupSuccess.jsp");
				 dis.forward(request, response);
			 }
			              
			//else redirect to the sign up page
			 else{
				   
				  RequestDispatcher dis=request.getRequestDispatcher("SignupUnSuccess.jsp");
				  dis.forward(request, response);   
			 }
			
		
	}

}


