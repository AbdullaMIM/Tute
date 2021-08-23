package model;

public class Customer {
		
		 
	     private String firstname;
	     private String lastname;
	     private String mobile;
	     private String email;
	     private String gender;
	     private String address;
		
	    public Customer(String firstname, String lastname, String mobile, String email, String gender, String address) {
			//super();
			this.firstname = firstname;
			this.lastname = lastname;
			this.mobile = mobile;
			this.email = email;
			this.gender = gender;
			this.address = address;
		}

		public String getFirstname() {
			return firstname;
		}

		public void setFirstname(String firstname) {
			this.firstname = firstname;
		}

		public String getLastname() {
			return lastname;
		}

		public void setLastname(String lastname) {
			this.lastname = lastname;
		}

		public String getMobile() {
			return mobile;
		}

		public void setMobile(String mobile) {
			this.mobile = mobile;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}
	    
	   
	    
	     
	     
	     
	     
		
}