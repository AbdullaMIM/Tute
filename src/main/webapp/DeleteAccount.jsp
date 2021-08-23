<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
            <meta charset="ISO-8859-1">
            <title>DELETE ACCOUNT</title>
            
           
             <link rel="stylesheet" type="text/css" href="css/headerAndFootercss.css">
                 
            <link rel="stylesheet" type="text/css" href="css/Signupcss.css">
                                   
            
            
            
</head>

<body>

             <img border="0" src="images/techtalk.jpg" alt="Pulpit rock"  width=200 height=100> 
  
   <a href="Login.jsp"><button class="buttonup">Logout</button></a>
   <input class="search" type="text" name="search" size=50 placeholder="search" > 
    
   <input class="upbtn" type="submit" value="search">
   
   <a href="#" class=" uplink">personal</a>
   <a href="#" class=" uplink" >business</a>
   <a href="#" class=" uplink" >language</a>
  
           







       <!--start NAVIGATION BAR -->
<ul>
  <li><a href="#home">Home</a></li>
  <li><a href="#news">Explore Packages</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a href="#about">About</a></li>
  <li><a href="#">My Account</a></li>
  <li><a href="#about">Reload /Pay Bill</a></li>
  <li><a href="#about">Cart</a></li>
  <li><a href="#about">Admin Panel </a></li>
</ul>

<!-- END OF NAVIGATION BAR header end-->
                            




        <%--1.Get the data values passed by Profile.jsp parameters &stored in the variables  --%>
          <%
               String firstname=request.getParameter("firstname");
               String lastname=request.getParameter("lastname");
               String mobile=request.getParameter("mobile");
               String email=request.getParameter("email");
               String gender=request.getParameter("gender");
               String address=request.getParameter("address");
          %>

           
          
          
         <%--2.Display current values in Profile.jsp(user profile) data as default values in form elements--%>
        
         
         
         
                 <h1 style="text-align:center;font-family:sans-serif;font-size:26px">Delete My Account</h1>
	     
	     
	 <div class="bcWork"> 
        
        <form action="delete" method="post"> 
        
            
          <label>First Name</label> <br>
	      <input type="text" id="name" name="fName" style="width:430px; height:20px" value="<%=firstname%>" required><br><br>
	       
         
          <label>Last Name</label> <br>
	      <input type="text" id="name" name="lName" style="width:430px; height:20px" value="<%=lastname%>" required><br><br>
	      
          
          <label>Mobile Number</label> <br>
	      <input type="text" id="ttmobile" name="ttmobile" style="width:430px; height:20px" value="<%=mobile%>" readonly><br><br>
	    
          
          <label>Email</label><br>
	      <input type="email" name="email" id="email"  style="width:430px; height:20px" value="<%=email%>" pattern="[a-zA-Z0-9%$#@&*&+-_.]+@[A-Za-z]{4,8}+\.[a-z]{2,3}" required><br><br>
	          
         
          <label>Gender</label><br>
          <input type="text" id="gender" name="gender" style="width:430px; height:20px" value="<%=gender%>" readonly><br><br>
          
          
          <label>Address</label><br>
          <input type="text" id="address" name="address" style="width:430px; height:20px" value="<%=address%>" required><br><br><br>
          
            
          <input type="submit" class="btn1" name="submit" style="width:300px; height:25px" value="Delete My Account Permanently"> <br>
        
        </form>   



    </div>






<br><br>
<!-- LAST PART OF THE PAGE -->

<div class="upfooter">  

<pre>		<b>Explore and Shop</b>                   <b>Contact Us</b>                           <b>Support</b> <br> <br>	      <a href="#" style="text-decoration:none">  mobile</a>                             <a href="#" style="text-decoration:none">contact info  </a>         <a href="#" style="text-decoration:none">    How to get 4G Unlimited ? </a><br> 		<a href="#" style="text-decoration:none">Broadband </a>            <a href="#" style="text-decoration:none">             online chat  </a>        <a href="#" style="text-decoration:none">      How to check balance ?</a>
 		<a href="#" style="text-decoration:none">loyality  </a>                 	   <a href="#" style="text-decoration:none">Skype </a>                     <a href="#" style="text-decoration:none">How to activate package ? </a> <br>              <a href="#" style="text-decoration:none">  International</a>                    <a href="#" style="text-decoration:none">  facebook</a>                 <a href="#" style="text-decoration:none">  want to be a loyal customer ?</a>    </pre>              


</div>


<footer>
  All rights reserved for techtalk.com  <br>
  <a href="#" style="text-decoration:none">techtalk.com</a><br>
</footer>










</body>
</html>