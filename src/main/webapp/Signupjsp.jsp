
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>

<html>

<head>
                                     <meta charset="ISO-8859-1">
                                     <title>Sign up</title>
                                     <link rel="stylesheet" type="text/css" href="css/headerAndFootercss.css">
                                     <link rel="stylesheet" type="text/css" href="css/Signupcss.css">
                                     
                                     <script type="text/javascript" src="Loginjs.js"></script>
	
         
                                     
</head>

<body>

                    

   <img border="0" src="images/techtalk.jpg" alt="Pulpit rock"  width=200 height=100> 
  
   <a href="Login.jsp"><button class="buttonup">Login</button></a>
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
          <li><a href="#Login">My Account</a></li>
          <li><a href="#about">Reload /Pay Bill</a></li>
          <li><a href="#about">Cart</a></li>
          <li><a href="#about">Admin Panel </a></li>
        </ul>

                  <!-- END OF NAVIGATION BAR header end-->

 
          
         
                         
                         <h1 style="text-align:center;font-family:sans-serif;font-size:26px">SIGN UP</h1>
	      

   <div class="bcWork">
	 

      <form action="signRVB" target="_self"  method="post" onsubmit="return checkPassword()">
	      
	       <h3 style="text-align:center;font-family:sans-serif">Register with techtalk.com and get unlimited services!!!</h3><br>
	       
	       
	       <label>First Name</label> <br>
	       <input type="text" id="name" name="fName" style="width:430px; height:20px" placeholder="Enter First Name" required><br><br>
	       
	       <label>Last Name</label> <br>
	       <input type="text" id="name" name="lName" style="width:430px; height:20px" placeholder="Enter Last Name" required><br><br>
	      
	       <label>Mobile Number</label> <br>
	       <input type="text" id="ttmobile" name="ttmobile" style="width:430px; height:20px" placeholder="Enter techtalk number" pattern="[0-9]{10}" required><br><br>
	 
	       <label>Email</label><br>
	       <input type="email" name="email" id="email" required style="width:430px; height:20px" placeholder="user@gmail.com" pattern="[a-zA-Z0-9%$#@&*&+-_.]+@[A-Za-z]{4,8}+\.[a-z]{2,3}"><br><br>
	       
	       <label>Gender</label><br>
	           <select id="gender" name="gender" style="margin:4px; padding:6px 124px" required>
	           <option>Male</option>
	           <option>Female</option>
		    </select>  <br><br>     
	      
	       
	       <label>Address</label> <br>
	       <textarea id="address" name="address"  rows="5" cols="58" placeholder="Enter your address here" required></textarea><br><br>
	         
		  
	      <label>User Name</label> <br>
	       <input type="text" id="userID" name="userID" style="width:430px; height:20px" placeholder="Enter User Name" required><br><br>
	 
	       
	      <label>Password</label> <br>
	      <input type="password" id="pwd" name="pwd" style="width:430px; height:20px" placeholder="Enter Password" pattern="[a-zA-Z0-9_#@.+-/%]{8,16}" required><br><br> <!-- Password should between 8 to 16 characters-->
	  
	      <label>Re-enter Password</label> <br>
	      <input type="password"  id="rpwd" name="rpwd"  style="width:430px; height:20px" placeholder="Re-enter same Password"  pattern="[a-zA-z0-9_#@.+-/%]{8,16}" required><br><br><br>
	      
	      
	      <input type="submit" class="btn1" id="bttn1" name="bttn1" value="Sign Up" style="width:300px; height:28px;"> <br><br><br>
	      
	      <input type="reset" class="btn2"  id="bttn2" name="bttn2" value="Reset" style="width:300px; height:28px">
	      
	     
     </form>



  </div>






           <br>
                 <!-- LAST PART OF THE PAGE -->

          <div class="upfooter">  

          <pre>		<b>Explore and Shop</b>                   <b>Contact Us</b>                           <b>Support</b> <br> <br>	      <a href="#" style="text-decoration:none">  mobile</a>                             <a href="#" style="text-decoration:none">contact info  </a>         <a href="#" style="text-decoration:none">    How to get 4G Unlimited ? </a><br> 		<a href="#" style="text-decoration:none">Broadband </a>            <a href="#" style="text-decoration:none">             online chat  </a>        <a href="#" style="text-decoration:none">      How to check balance ?</a>
 		  <a href="#" style="text-decoration:none"> loyality  </a>                 	   <a href="#" style="text-decoration:none"> Skype </a>                     <a href="#" style="text-decoration:none">How to activate package ? </a> <br>              <a href="#" style="text-decoration:none">  International</a>                    <a href="#" style="text-decoration:none">  facebook</a>                 <a href="#" style="text-decoration:none">  want to be a loyal customer ?</a>    </pre>              


          </div>


          <footer>
            All rights reserved for techtalk.com  <br>
          <a href="#" style="text-decoration:none">techtalk.com</a><br>
          </footer>




</body>
</html>