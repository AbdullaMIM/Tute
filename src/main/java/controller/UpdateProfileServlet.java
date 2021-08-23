package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtil.CustomerDBUtil;
import model.Customer;


@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		 //1.Store passed data from UpdateProfile.jsp into variables
	      String firstname=request.getParameter("fName");
	      String lastname=request.getParameter("lName");
	      String mobile=request.getParameter("ttmobile");
	      String email=request.getParameter("email");
	      String gender=request.getParameter("gender");
	      String address=request.getParameter("address");

		
	      
	    //2.pass all updated customer data to the CustomerDBUtil.java class - updateProfile method and get boolean result
		    boolean result;
		    result=CustomerDBUtil.updateProfile(firstname,lastname,mobile,email,gender,address);
		 
		    
		    
		    
		    
		   
		    
	    //3.If update is successful redirect to the Profile.jsp page & display customer updated details
		    
		    if(result==true) {
				
		    	 //3.1Pass mobile number to CustomerDBUtil.java class getCustomerUpdate method & return Customer ArrayList object 
		    	 List<Customer> cusDetails=CustomerDBUtil.getCustomerUpdate(mobile);
		         
		    	 //3.2Set which redirect to another page
		    	 request.setAttribute("customerDetails",cusDetails);
			    	
		    	 RequestDispatcher dis=request.getRequestDispatcher("Profile.jsp");
				 dis.forward(request, response);
			 }
			             
		   
		    //4.If update is not successful redirect to the Profile.jsp page & display customer older details(not updated details)
			 else {
				 
				 List<Customer> cusDetails=CustomerDBUtil.getCustomerUpdate(mobile);
				 
				 request.setAttribute("customerDetails",cusDetails);
			    	
				 RequestDispatcher dis2=request.getRequestDispatcher("Profile.jsp");
				 dis2.forward(request, response);
			 }
	 
		
		
		
		
		
		
		
		
		
		
		
	}

}
