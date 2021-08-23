package model;

public class postpaidCustomer extends Customer{


		
		 public double cusPayableAmount;
         public String cusPaymentStatus;
		
         
        public postpaidCustomer(String firstname, String lastname, String mobile, String email, String gender,String address,double cusPayableAmount, String cusPaymentStatus) {
			   
        	       super(firstname, lastname, mobile, email, gender, address);
        	       this.cusPayableAmount=cusPayableAmount;
        	       this.cusPaymentStatus=cusPaymentStatus;
			       
		}


		public double getCusPayableAmount() {
			return cusPayableAmount;
		}


		public void setCusPayableAmount(double cusPayableAmount) {
			this.cusPayableAmount = cusPayableAmount;
		}


		public String getCusPaymentStatus() {
			return cusPaymentStatus;
		}


		public void setCusPaymentStatus(String cusPaymentStatus) {
			this.cusPaymentStatus = cusPaymentStatus;
		}
        
        

}
