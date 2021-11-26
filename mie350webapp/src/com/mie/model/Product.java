package com.mie.model;

public class Product {
	/**
	 * This class contains all of the relevant information, and getter/setter
	 * methods for the Product object.
	 */

	private int productID;
	private String productName, brandID, brandName, type, shortDesc, longDesc, link;
	private double price, avgRating;
	

	//getters
	public int getProductID() {
		return productID;
	}
	public String getProductName() {
		return productName;
	}
	public String getBrandID() {
		return brandID;
	}
	public String getBrandName() {
		return brandName;
	}
	public String getType() {
		return type;
	}
	public String getShortDesc() {
		return shortDesc;
	}
	public String getLongDesc() {
		return longDesc;
	}
	public String getLink() {
		return link;
	}
	public double getPrice() {
		return price;
	}
	public double getAvgRating() {
		return avgRating;
	}
	
	
	//setters
	public void setProductid(int productID) {
		this.productID = productID;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public void setBrandid(String brandID) {
		this.brandID = brandID;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public void setType(String type) {
		this.type = type;
	}
	public void setShortDesc(String shortDesc) {
		this.shortDesc = shortDesc;
	}
	public void setLongDesc(String longDesc) {
		this.longDesc = longDesc;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public void setAvgRating(double avgRating) {
		this.avgRating = avgRating;
	}
	
	
	@Override
	public String toString() {
		return "Product [ProductID=" + this.productID + ", ProductName=" + this.productName
				+ ", BrandID=" + this.brandID + ", BrandName=" + this.brandName + "]";
	}
}