package com.mie.model;

public class Post {
	/**
	 * This class contains all of the relevant information, and getter/setter
	 * methods for the Post object.
	 */
	
	private int userID;
	private String datePosted, postContent, tags;
	
	//getters
	public int getUserID() {
		return userID;
	}
	public String getDatePosted() {
		return datePosted;
	}
	public String getPostContent() {
		return postContent;
	}
	public String getTags() {
		return tags;
	}
	
	//setters
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public void setDatePosted(String datePosted) {
		this.datePosted = datePosted;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	
	@Override
	public String toString() {
		return "Post [UserID=" + this.userID + ", DatePosted=" + this.datePosted
				+ ", PostContent=" + this.postContent + ", Tags=" + this.tags + "]";
	}
	

}
