package com.mie.model;

public class Save {
	private int userID;
	private int productID;
	
	public int getUserID() {
		return userID;
	}
	public int getProductID() {
		return productID;
	}
	
	
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	
	
	@Override
	public String toString() {
		return "Save [UserID=" + this.userID + ", ProductID=" + this.productID + "]";
	}
	
	
}
