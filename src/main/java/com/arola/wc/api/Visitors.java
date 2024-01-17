package com.arola.wc.api;

public class Visitors {
	
	// field names SHOULD match those used in the input tags
		private String name;
		private String email;
		private String message;
		
		private String password;
		private String confirmPass;
		
		private String userType;
		
		
		// getters and setters
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getMessage() {
			return message;
		}
		public void setMessage(String message) {
			this.message = message;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getConfirmPass() {
			return confirmPass;
		}
		public void setConfirmPass(String confirmPass) {
			this.confirmPass = confirmPass;
		}
		public String getUserType() {
			return userType;
		}
		public void setUserType(String userType) {
			this.userType = userType;
		}
		
		
		
		

}
