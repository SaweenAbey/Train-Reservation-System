package com.Railxpress.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Railxpress.model.Review;
import com.Railxpress.utils.DBconnect;


public class ReviewService {
	
	public ArrayList<Review> showHomeReview() {
		try {
			ArrayList<Review> review= new ArrayList<Review>();
			
			String query= "select * from review";
			Statement statement=DBconnect.getConnection().createStatement();
			Statement statement2=DBconnect.getConnection().createStatement();
			
			ResultSet rs=statement.executeQuery(query);
			
			while(rs.next()) {
				Review rev=new Review();
				rev.setReviewId(rs.getInt("reviewId"));
				rev.setCusId(rs.getInt("cid"));
				rev.setMessage(rs.getString("message"));
				rev.setRating(rs.getInt("rating"));
				rev.setType(rs.getString("type"));
				System.out.println(rev.getRating());
				
				String query2= "select name from customer where cid='"+rev.getCusId()+"'";
				ResultSet rs2= statement2.executeQuery(query2);
				
				if(rs2.next()) {
					rev.setName(rs2.getString("name"));
				}
				
				review.add(rev);
			}
			return review;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public void insertReview(Review rev) {
		
		String query = "Insert into review(type,message,rating,cid) values(?,?,?,?)";
		try {
			Connection conn=DBconnect.getConnection();
			System.out.println(conn);
			PreparedStatement stmt= conn.prepareStatement(query);
			if(rev.getRating()>=3) {
				rev.setType("Positive");
			}
			else {
				rev.setType("Negative");
			}
			stmt.setString(1,rev.getType());
			stmt.setString(2,rev.getMessage());
			stmt.setInt(3,rev.getRating());
			stmt.setInt(4,rev.getCusId());
			
			int c=stmt.executeUpdate();
			System.out.println(c);
			
		}catch (SQLException e) {
	        e.printStackTrace(); // Catches database-related exceptions
	    } catch (NullPointerException e) {
	        System.out.println("Null value encountered: " + e.getMessage()); // Catches null pointer exceptions
	    } catch (ClassNotFoundException e) {
	        System.out.println("Database driver not found: " + e.getMessage()); // Catches class not found exceptions
	    }
		 
	}
	
	public void updateReview(Review rev) {
		String query= "UPDATE review SET type=? ,message=? ,rating=? where reviewId=?"; 

		try {
			PreparedStatement stmt =DBconnect.getConnection().prepareStatement(query);
			
			if(rev.getRating()>=3) {
				rev.setType("Positive");
			}
			else {
				rev.setType("Negative");
			}
			stmt.setString(1,rev.getType());
			stmt.setString(2,rev.getMessage());
			stmt.setInt(3,rev.getRating());
			stmt.setInt(4, rev.getReviewId());
			
			stmt.executeUpdate();
		}
		catch(Exception e) {
			
		}
	}
	public void deleteReview(int id) {
		String query="DELETE from review where reviewId=?";
		try {
			Connection conn =DBconnect.getConnection();
			PreparedStatement stmt=  conn.prepareStatement(query);
			stmt.setInt(1, id);
			
			stmt.executeUpdate();
		}catch(Exception e) {
			
		}
	}
	
	public ArrayList<Review> getAllReviewUserSpecific(int cid) {
		try {
			ArrayList<Review> review= new ArrayList<Review>();
			
			String query= "select * from review where cid='"+cid+"'";
			Statement statement=DBconnect.getConnection().createStatement();
			Statement statement2=DBconnect.getConnection().createStatement();
			
			ResultSet rs=statement.executeQuery(query);
			
			while(rs.next()) {
				Review rev=new Review();
				rev.setReviewId(rs.getInt("reviewId"));
				rev.setCusId(rs.getInt("cid"));
				rev.setMessage(rs.getString("message"));
				rev.setRating(rs.getInt("rating"));
				rev.setType(rs.getString("type"));
				System.out.println(rev.getRating());
				
				String query2= "select name from customer where cid='"+rev.getCusId()+"'";
				ResultSet rs2= statement2.executeQuery(query2);
				
				if(rs2.next()) {
					rev.setName(rs2.getString("name"));
				}
				
				review.add(rev);
			}
			return review;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public int getReveiwCount(int cid) {
		String query= "select count(reviewId) as count from review where cid=?";
		int reviewCount=0;
		try {
			PreparedStatement stmt=DBconnect.getConnection().prepareStatement(query);
			stmt.setInt(1, cid);
			
			ResultSet rs=stmt.executeQuery();
			if(rs.next()) {
				reviewCount=rs.getInt("count");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return reviewCount;
	}
	
}
