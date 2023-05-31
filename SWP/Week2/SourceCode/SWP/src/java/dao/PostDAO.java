<<<<<<< HEAD
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Post;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import dal.DBConnect;
import java.sql.Date;

/**
 *
 * @author Uslaptop
 */
public class PostDAO extends MyDAO {

    public Vector<Post> getAll() {
        Vector<Post> vector = new Vector<Post>();
        xSql = "select * from Post";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int post_id = rs.getInt("post_id");
                String post_img = rs.getString("post_img");
                String post_title = rs.getString("post_title");
                String post_desc = rs.getString("post_desc");
                Date post_date = rs.getDate("post_date");
                Boolean post_status = rs.getBoolean("post_status");
                int blog_id = rs.getInt("blog_id");
                Post post = new Post(post_id, post_img, post_title, post_desc, post_date, post_status, blog_id);
                vector.add(post);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }

    public void searchByName(String post_title) {
        xSql = "select* from Post where post_title like ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, "%" + post_title + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                rs.getInt("post_id");
                rs.getString("post_img");
                rs.getString("post_title");
                rs.getString("post_desc");
                rs.getDate("post_date");
                rs.getBoolean("post_status");
                rs.getInt("blog_id");
            }
        } catch (Exception e) {
            System.out.println("checkPost: " + e.getMessage());
        }

    }

}
=======
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Post;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import dal.DBConnect;
import java.sql.Date;

/**
 *
 * @author Uslaptop
 */
public class PostDAO extends MyDAO {

    public Vector<Post> getAll() {
        Vector<Post> vector = new Vector<Post>();
        xSql = "select * from Post";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int post_id = rs.getInt("post_id");
                String post_img = rs.getString("post_img");
                String post_title = rs.getString("post_title");
                String post_desc = rs.getString("post_desc");
                Date post_date = rs.getDate("post_date");
                Boolean post_status = rs.getBoolean("post_status");
                int blog_id = rs.getInt("blog_id");

                // create object
                Post post = new Post(post_id, post_img, post_title, post_desc, post_date, post_status, blog_id);
                vector.add(post);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }
      public static void main(String[] args) {
        PostDAO cd = new PostDAO();
        Vector<Post> list = cd.getAll();
        for (Post c : list) {
            System.out.println(c.getPost_id());
        }
    }
}
>>>>>>> f021c6bee9ef24eebc5a79bf7f0c4088389d9df1
