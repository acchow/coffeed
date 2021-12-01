package com.mie.model;

public class Follow {
	/**
	 * This class contains all of the relevant information, and getter/setter
	 * methods for the Follow object.
	 */
	
	private int userID;
	private String brandID;
	
	//getters 
	public int getUserID() {
		return userID;
	}
	public String getBrandID() {
		return brandID;
	}
	
	//setters
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public void setBrandID(String brandID) {
		this.brandID = brandID;
	}
	
	
	@Override
	public String toString() {
		return "Follow [UserID=" + this.userID + ", BrandID=" + this.brandID + "]";
	}
	
}
