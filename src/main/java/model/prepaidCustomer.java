package model;

public class prepaidCustomer extends Customer {

	           
	       public double cusAmount;
           public String cusLoanStatus;
	
	    
           public prepaidCustomer(String firstname, String lastname, String mobile, String email, String gender,String address,double cusAmount,String cusLoanStatus) {
		               
	    	       super(firstname, lastname, mobile, email, gender, address);
		           this.cusAmount=cusAmount;
		           this.cusLoanStatus=cusLoanStatus;
	       }


		public double getCusAmount() {
			return cusAmount;
		}


		public void setCusAmount(double cusAmount) {
			this.cusAmount = cusAmount;
		}


		public String getCusLoanStatus() {
			return cusLoanStatus;
		}


		public void setCusLoanStatus(String cusLoanStatus) {
			this.cusLoanStatus = cusLoanStatus;
		}

}
