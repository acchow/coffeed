package com.mie.model;

public class Review {
	/**
	 * This class contains all of the relevant information, and getter/setter
	 * methods for the Review object.
	 */
	
	private int userID, itemID;
	private String brandID, dateReview, review;
	double rating;
	
	//getters
	public int getUserID() {
		return userID;
	}
	public int getItemID() {
		return itemID;
	}
	public String getBrandID() {
		return brandID;
	}
	public String getDateReview() {
		return dateReview;
	}
	public String getReview() { 
		return review;
	}
	public double getRating() {
		return rating;
	}
	
	
	//setters
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public void setItemID(int itemID) {
		this.itemID = itemID;
	}
	public void setBrandID(String brandID) {
		this.brandID = brandID;
	}
	public void setDateReview(String dateReview) {
		this.dateReview = dateReview;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	
	
	@Override
	public String toString() {
		return "Review [UserID=" + this.userID + ", ItemID=" + this.itemID
				+ ", BrandID=" + this.brandID + ", DateReview=" + this.dateReview + 
				", Review=" + this.review + ", Rating=" + this.rating + "]";
	}
	
}
