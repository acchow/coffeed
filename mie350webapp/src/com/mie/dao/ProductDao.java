package com.mie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mie.model.Product;
import com.mie.util.DbUtil;

public class ProductDao {
	/**
	 * This class handles all of the product-related methods
	 * (add/update/delete/get).
	 */

	private Connection connection;

	public ProductDao() {
		/**
		 * Get the database connection.
		 */
		connection = DbUtil.getConnection();
	}

	public void unsaveProduct(int productid, int userid) {
		/**
		 * This method deletes a product from a wishlist.
		 */
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from Saves where ProductID=? AND UserID=?");
			// Parameters start with 1
			preparedStatement.setInt(1, productid);
			preparedStatement.setInt(2, userid);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<Product> getAllProducts() {
		/**
		 * This method returns the list of all products in the form of a List
		 * object.
		 */
		List<Product> products = new ArrayList<Product>();
		try {
			Statement statement = connection.createStatement();
			// System.out.println("getting students from table");
			ResultSet rs = statement.executeQuery("select * from Products");
			while (rs.next()) { 
				Product product = new Product();
				product.setProductid(rs.getInt("ProductID"));
				product.setProductName(rs.getString("ProductName"));
				product.setBrandid(rs.getString("BrandID"));
				product.setBrandName(rs.getString("BrandName"));
				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return products;
	}

	public Product getProductById(int productid) {
		/**
		 * This method retrieves a product by their ProductID number.
		 * 
		 * Currently not used in the sample web app, but code is left here for
		 * your review.
		 */
		Product product = new Product();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from Products where ProductID=?");
			preparedStatement.setInt(1, productid);
			ResultSet rs = preparedStatement.executeQuery();

			if (rs.next()) {
				product.setProductid(rs.getInt("ProductID"));
				product.setProductName(rs.getString("ProductName"));
				product.setBrandid(rs.getString("BrandID"));
				product.setBrandName(rs.getString("BrandName"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return product;
	}

	public List<Product> getProductByKeyword(String keyword) {
		/**
		 * This method retrieves a list of students that matches the keyword
		 * entered by the user.
		 */
		List<Product> products = new ArrayList<Product>();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from Products where ProductName LIKE ? OR BrandName LIKE ? OR Type LIKE ? OR ShortDescription LIKE ?");

			preparedStatement.setString(1, "%" + keyword + "%");
			preparedStatement.setString(2, "%" + keyword + "%");
			preparedStatement.setString(3, "%" + keyword + "%");
			preparedStatement.setString(4, "%" + keyword + "%");
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				Product product = new Product();
				product.setProductid(rs.getInt("ProductID"));
				product.setProductName(rs.getString("ProductName"));
				product.setBrandName(rs.getString("BrandName"));
				product.setPrice(rs.getInt("Price"));
				product.setType(rs.getString("Type"));
				product.setShortDesc(rs.getString("ShortDescription"));
				product.setLongDesc(rs.getString("LongDescription"));
				product.setAvgRating(rs.getInt("AvgRating"));
				product.setLink(rs.getString("Link"));
				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return products;
	}

}