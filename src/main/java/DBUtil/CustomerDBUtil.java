package DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



import Database.DBConnect;
import model.Customer;




public class CustomerDBUtil {
	
	private static Connection con=null;   
    private static Statement stmt=null;
    private static ResultSet rs=null;
    private static boolean result;
    
                                                                 //01.insertCustomer
    //1.Get customer details pass from SignupServlet.java & return boolean value to send respond to the servlet to specify data inserted successfully or not to the database 
    public static boolean insertCustomer(String firstName,String lastName,String mobileNo,String email,String gender,String address,String userName,String password) {
    	
    	   
    	     
    	   //try & catch block to check&catch any errors in the database connection or others
    	   try {
    		      
    		   //Make the connection
    		    con=DBConnect.getConnection();
    		    stmt=con.createStatement();
    		   
    		   
    		    //3.Insert data(customer details) get from SignupServlet.java to database
    		    String sql="insert into customer values('"+firstName+"','"+lastName+"','"+mobileNo+"','"+email+"','"+gender+"','"+address+"','"+userName+"','"+password+"')";
    		    
    		    //4.Run the sql query and get int result, insert data into database successfully   rs=1 else rs=0
    	            int rs=stmt.executeUpdate(sql);
    	   
    	             
    	        //5.If data insert to database successfully return true, else false 
    	          if(rs>0) {    
    	        	  result=true;
    	          }
    	          else {
    	        	  result=false;
    	          }
    	   
    	   }
    	  
    	   catch(Exception e) {
	    		  e.printStackTrace();
	       } 
    	  
    	   
    	   
    	//6.return boolean result to CustomerInsert.java servlet class
    	return result;
    	
    }
    
    
    

        
    
    
    
                                          //02.validateCustomer &  getCustomer
     public static boolean validateCustomer(String username, String password) {
    
    	try {
    		  
    		   con=DBConnect.getConnection();
    		   stmt=con.createStatement();
		       
		       String sql="select * from customer where userName='"+username+"' and password='"+password+"'";
	    		  
		        rs=stmt.executeQuery(sql);
	    		   
    		    if(rs.next()) {    
    	        	  result=true;
    	        }
    	        else {
    	        	  result= false;
    	        }
    		       
		       
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	
    	return result;
    	
    }
	  


 
    
    
    
    public static List<Customer> getCustomer(String userName){    
  	  
		   ArrayList<Customer> customer=new ArrayList<Customer>();
 
	 
	   try {
		        
		   con=DBConnect.getConnection();
	       stmt=con.createStatement();
	       
	       String sql="select * from customer where userName='"+userName+"'";
		  
	        rs=stmt.executeQuery(sql);
 	
		    while(rs.next()) {
		    	
		    	        
		    	String firstname=rs.getString(1);
		    	String lastname=rs.getString(2);
		    	String mobileNo=rs.getString(3);   
		    	String email=rs.getString(4);
		    	String gender=rs.getString(5);
  			    String address=rs.getString(6);
  		        
		   
  		 	Customer customer1=new Customer(firstname,lastname,mobileNo,email,gender,address);
  			
  		 	customer.add(customer1);
		    	
		    }
		      
	   }
	   
	  
	   catch(Exception e) {
		  e.printStackTrace();
	   }
	    
	  
	   return customer;	
   } 
	   
    
    
    
    
    
    
    
        
                                      //03.updateProfile & getCustomerUpdate
  //1.Get  customer details pass from UpdateProfileServlet.java  & return boolean value to send respond to the servlet to specify data updated successfully or not to the database 
    public static boolean updateProfile(String firstname,String lastname,String mobile,String email,String gender, String address) {
    
    	 
    	//try & catch block to check&catch any errors in the database connection or others
        try {
    		  
        	//Make the connection
		     con=DBConnect.getConnection();
		     stmt=con.createStatement();
    		
		     //3.Update data (customer details) which is  get from  UpdateProfileServlet.java to database
		     String sql="update customer set firstName='"+firstname+"', lastName='"+lastname+"', mobileNo='"+mobile+"', email='"+email+"', gender='"+gender+"', address='"+address+"'"
		    		    +"where mobileNo='"+mobile+"'";
    	
		    //4.Run the sql query and get int result,update data into database successfully rs=1 else rs=0
		      int rs=stmt.executeUpdate(sql);
	    	        
		    //5.If data update to database successfully return true, else false 
	              if(rs>0) {    
	        	     result=true;
	              }
	              else {
	        	     result= false;
	              }
		     
    	}
        
    	  
        catch(Exception e){
    		  e.printStackTrace();
    	}
    	
    	    
    	   //6.return boolean result to updateCustomerServlet.java servlet class	    
            return result;
    }
    
    
    
    
    
    
    
    
    public static List<Customer> getCustomerUpdate(String mobileNO){    
    	  
		   ArrayList<Customer> customer=new ArrayList<Customer>();

	 
	   try {
		        
		   con=DBConnect.getConnection();
	       stmt=con.createStatement();
	       
	       String sql="select * from  customer where mobileNo='"+mobileNO+"'";
		  
	        rs=stmt.executeQuery(sql);
	
		    while(rs.next()) {
		    	
		    	        
		    	String firstname=rs.getString(1);
		    	String lastname=rs.getString(2);
		    	String mobileNo=rs.getString(3);   
		    	String email=rs.getString(4);
		    	String gender=rs.getString(5);
			    String address=rs.getString(6);
		        
		   
		 	Customer customer3=new Customer(firstname,lastname,mobileNo,email,gender,address);
			
		 	customer.add(customer3);
		    	
		    }
		      
	   }
	   
	  
	   catch(Exception e) {
		  e.printStackTrace();
	   }
	    
	  
	   return customer;	
} 
	   
 
 
    
    
    
                               //04.deleteAccount
    //1.Get customer details(mobile) pass from DeleteAccountServlet.java & return boolean value to send respond to the servlet to specify data deleted successfully or not from the database  
    public static boolean deleteAccount(String mobile) {
    	
    	
        //try & catch block to check&catch any errors in the database connection &other errors
    	try {
    		
    		 //Make the connection
		      con=DBConnect.getConnection();
		      stmt=con.createStatement();
		      
		    //3.Delete data(Customer details) from database of particular unique registered mobile
    	        String sql="delete from customer where mobileNo='"+mobile+"'";
    	      
    	      
    	        
    	        //4.Run the sql query and get int result, delete data from database successfully   rs=1 else rs=0
	                 int rs=stmt.executeUpdate(sql);
	              
	              //5.If data delete from database successfully return true, else false 
  	              if(rs>0) {    
  	        	     result=true;
  	              }
  	              else {
  	        	     result=false;
  	              }
    		
    	}
    	catch(Exception e){
    		e.printStackTrace();	
    	}
    	
    	
    
    	//6.return boolean result to DeleteAccountServlet.java  class
    	return result;
    	
    }
    
    
    
    
   

}    
    
    
    
    
















