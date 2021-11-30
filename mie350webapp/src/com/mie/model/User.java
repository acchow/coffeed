package com.mie.model;

public class User {

	private int userId;
	private String fname, lname, email, pw, experience, interests;
	private boolean valid;
	
	
	
	//getters
	public int getUserId() {
		return userId;
	}
	public String getFName() {
		return fname;
	}
	public String getLName() {
		return lname;
	}
	public String getEmail() {
		return email;
	}
	public String getPw() {
		return pw;
	}
	public String getExperience() {
		return experience;
	}
	public String interests() {
		return interests;
	}
	public boolean valid() {
		return valid;
	}
	
	//setters
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public void setFName(String fname) {
		this.fname = fname;
	}
	public void setLName(String lname) {
		this.lname = lname;
	}
	public void setEmail(String email) {		//users login with email 
		this.email = email;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public void setInterests(String interests) {
		this.interests = interests;
	}
	public void setValid(boolean valid) {
		this.valid = valid;
	}
	

	@Override
	public String toString() {
		return "User [userid=" + userId + ", firstName=" + fname
				+ ", lastName=" + lname + ", email=" + email
				+ ", password=" + pw + ", experience=" + experience + ", interests=" + interests +  "]";
	}
	
}
