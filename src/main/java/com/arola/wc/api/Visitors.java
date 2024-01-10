package com.arola.wc.api;

public class Visitors {
	
	// field names SHOULD match those used in the input tags
		private String name="e.g Samuel";
		private String email ="newton@arola.com";
		private String message ="type message here...";
		
		
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

}
