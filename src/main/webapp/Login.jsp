<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>
         <meta charset="ISO-8859-1">
         <title>Login</title>
         
         <link rel="stylesheet" type="text/css" href="css/headerAndFootercss.css">
            
         <link rel="stylesheet" type="text/css" href="css/Logincss.css">
         
         <script type="text/javascript" src="Loginjs.js"></script>
	
            
</head>

<body>
      
      
       <img border="0" src="images/techtalk.jpg" alt="Pulpit rock"  width=200 height=100> 
  
        
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

      
          <center>
          <h1 class="font">Login</h1>
	      </center>
	      
	      
	  <div class="bcWork">
	  
	  <form action="login" target="_self" method="POST" onsubmit="">
	  
	  <label>Username</label> <br>
	  <input type="text" id="username" name="username" style="width:400px; height:20px" placeholder="Enter User name" required><br><br>
	 
	  <label>Password</label> <br>
	  <input type="password" id="pwd" name="pwd" style="width:400px; height:20px" placeholder="Enter Password" pattern="[a-zA-Z0-9_#@.+-/%]]{8,16}" required><br><br>  <!-- Password should between 8 to 16 characters-->
	  
	  <label>Remember Username</label>
	  <input type="checkbox" id="reminder" name="reminder"><br><br>
	  
	  <label>I'm not Robot</label>
	  <input type="checkbox" id="check" name="check" onclick="enableLogin()"><br><br>
	  
	  
	  <input type="submit" id="bttn1" name="bttn1" value="Log in" style="width:400px; height:28px">
	  
	  </form>
	  
	  
	  <br><br>
	  <a id="linkPwd" href="Signupjsp.jsp">Don't you have an account? </a> <br><br> 
	  </div>
	  
      









<br>
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