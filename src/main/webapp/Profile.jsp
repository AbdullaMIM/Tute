<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
    
<!DOCTYPE html>
<html>
<head>
     <meta charset="ISO-8859-1">
     <title>MY PROFILE</title>
     
      <link rel="stylesheet" type="text/css" href="css/headerAndFootercss.css">
      <link rel="stylesheet" type="text/css" href="css/Profilecss.css">
     
         
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



           
           
            <h1 style="color:#333;font-weight:bold; font-size:30px; text-align: center; "> MY PROFILE</h1>
			
    
            <div class="userprofile">
            		
    
    
    
         
             
             <c:forEach var="cus"  items="${customerDetails}"> 
             
             
                                <%-- 1.Assign data into variables using set method to pass to the UpdateProfile.jsp page inside forEach loop--%>
                                       <c:set var="firstname" value="${cus.firstname}"/>
                                       <c:set var="lastname" value="${cus.lastname}"/>
                                       <c:set var="mobile" value="${cus.mobile}"/>
                                       <c:set var="email" value="${cus.email}"/>
                                       <c:set var="gender" value="${cus.gender}"/>
                                       <c:set var="address" value="${cus.address}"/>
           
            
      
             <center> 
             
              <img src="images/profile.png" class="logo1">
             
              <p style='color:black; font-size:25px; font-weight:bold'>${cus.mobile} <br> ${cus.firstname}  ${cus.lastname}</p><br>              
              
              
              <div class="profile2">
              
              <h2> ADDRESS &nbsp &nbsp: &nbsp &nbsp  <span style='color:red'>${cus.address}</span></h2>         
              
              <h2> GENDER &nbsp &nbsp    : &nbsp &nbsp <span style='color:red'>${cus.gender}</span></h2>     
              
              <h2> E-Mail &nbsp &nbsp &nbsp &nbsp &nbsp: &nbsp &nbsp  <span style='color:red'>${cus.email}</span></h2>   <br><br><br><br><br>      
                        
              </div>
             
             
           
             </center>
            </c:forEach>
            
            
                                       <%--3.pass data to UpdateProfile.jsp via url --%>
                                           <c:url value="UpdateProfile.jsp" var="profileUpdate">
                                           <c:param name="firstname" value="${firstname}"/>
                                           <c:param name="lastname" value="${lastname}"/>
                                           <c:param name="mobile" value="${mobile}"/>
                                           <c:param name="email" value="${email}"/>
                                           <c:param name="gender" value="${gender}"/>
                                           <c:param name="address" value="${address}"/>
                                           </c:url>
            
            
            
                                        <%-- 2.Create 'Update My Data' button by click that redirect to the UpdateProfile.jsp  page --%>
                                            <a href="${profileUpdate}">
                                            <input type="button" class="updateP" name="updateP" value="Update My Data" style="width:300px; height:28px;">
                                            </a><br><br><br>
           
          
          
          
          
          
          
          
           
                                        <%--3.pass data to DeleteAccount.jsp via url --%>
                                           <c:url value="DeleteAccount.jsp" var="deleteAccount">
                                           <c:param name="firstname" value="${firstname}"/>
                                           <c:param name="lastname" value="${lastname}"/>
                                           <c:param name="mobile" value="${mobile}"/>
                                           <c:param name="email" value="${email}"/>
                                           <c:param name="gender" value="${gender}"/>
                                           <c:param name="address" value="${address}"/>
                                           </c:url>
            
            
                                      <%-- 2.Create 'Delete My Account' button by click that redirect to the DeleteAccount.jsp page --%>
                                            <a href="${deleteAccount}">
                                            <input type="button" class="updateP" name="deleteP" value="Delete My Account" style="width:300px; height:28px;">
                                            </a>
           
                                      
          
       
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