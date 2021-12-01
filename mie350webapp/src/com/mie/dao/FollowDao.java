package com.mie.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mie.model.Follow;
import com.mie.util.DbUtil;

public class FollowDao {
	/**
	 * This class handles all of the product-related methods
	 * (add/update/delete/get).
	 */

	private Connection conn;

	public FollowDao() {
		/**
		 * Get the database connection.
		 */
		conn = DbUtil.getConnection();
	}

	
	public List<Follow> getAllFollows() {
		/**
		 * This method returns the list of all follows in the form of a List
		 * object.
		 */
		List<Follow> follows = new ArrayList<Follow>();
		try {
			Statement statement = conn.createStatement();
			// System.out.println("getting students from table");
			ResultSet result = statement.executeQuery("SELECT * FROM Follows");
            while (result.next()) {
            	Follow follow = new Follow();
                follow.setUserID(result.getInt("UserId"));
                follow.setBrandID(result.getString("BrandId"));
                follows.add(follow);
            }
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return follows;
	}
	
	
}
