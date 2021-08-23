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



@WebServlet("/DeleteAccountServlet")
public class DeleteAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	//1.Store passed data (mobile number) from  DeleteAccount.jsp into variables
        String mobile=request.getParameter("ttmobile");
    
        
    //2.pass customer mobile to the CustomerDBUtil.java class - deleteAccount method and get boolean result
	    boolean result;
	    result=CustomerDBUtil.deleteAccount(mobile);
	
	  
	 //3.If result is true, deletion is success,Use RequestDispatcher class to redirect to Signupjsp.jsp page
	    if(result==true){
	    	
	    	
	    	RequestDispatcher dis=request.getRequestDispatcher("Signupjsp.jsp");
            dis.forward(request, response);
	    	
	    }
	    
	  //3.If result is false, deletion is not success,Use RequestDispatcher class to redirect to  Profile.jsp(user profile) page & want to display customer current details  
	    else{
	    	
	    	//3.1 Pass mobile to CustomerDBUtil class getCustomerDetails method & return Customer ArrayList object 
	    	 List<Customer> cusDetails=CustomerDBUtil.getCustomerUpdate(mobile);
	         
	    	 //3.2 Set which redirect to another page
	    	 request.setAttribute("customerDetails",cusDetails);
	    	
	    	RequestDispatcher dis=request.getRequestDispatcher("Profile.jsp");
            dis.forward(request, response);
	    	
	    }
	
		
		
		
		
		
		
		
	}

}
