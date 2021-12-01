package com.mie.model;

public class Shop {
	
	private int id;
	private String name, brandID, brandName, location, shortDesc, longDesc, website, instagram;
	private double avgRating;
	
	
	//getters 
	public int getShopId() {
		return id;
	}
	public String getShopName() {
		return name;
	}
	public String getBrandID() {
		return brandID;
	}
	public String getBrandName() {
		return brandName;
	}
	public String getLocation() {
		return location;
	}
	public String getShortDesc() {
		return shortDesc;
	}
	public String getLongDesc() {
		return longDesc;
	}
	public String getWebsite() {
		return website;
	}
	public String getInstagram() {
		return instagram;
	}
	public double getRating() {
		return avgRating;
	}
	
	
	//setters
	public void setShopId(int id) {
		this.id = id;
	}
	public void setShopName(String name) {
		this.name = name;
	}
	public void setBrandID(String brandID) {
		this.brandID = brandID;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public void setShortDesc(String shortDesc) {
		this.shortDesc = shortDesc;
	}
	public void setLongDesc(String longDesc) {
		this.longDesc = longDesc;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public void setInstagram(String instagram) {
		this.instagram = instagram;
	}
	public void setRating(double rating) {
		this.avgRating = rating;
	}
	
	
	@Override
	public String toString() {
		return "Shop [ShopID=" + this.id + ", ShopName=" + this.name + 
				", BrandID=" + this.brandID + ", BrandName=" + this.brandName + 
				", Location=" + this.location + ", ShortDescription=" + this.shortDesc + 
				", LongDescription=" + this.longDesc + ", website=" + this.website + 
				", Instagram=" + instagram + "]";
	}
	
	
	
	
}
