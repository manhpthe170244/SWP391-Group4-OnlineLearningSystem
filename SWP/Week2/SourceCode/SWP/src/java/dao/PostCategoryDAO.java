/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.PostCategory;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Uslaptop
 */
public class PostCategoryDAO extends MyDAO {

    public Vector<PostCategory> getAll() {
        Vector<PostCategory> vector = new Vector<PostCategory>();
        xSql = "select * from Blog";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int blog_id = rs.getInt("blog_id");
                String blog_name = rs.getString("blog_name");
                String blog_title = rs.getString("blog_title");
                Date updated_date = rs.getDate("updated_date");

                // create object
                PostCategory pc = new PostCategory(blog_id, blog_name, blog_title, updated_date);
                vector.add(pc);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostCategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }

    public static void main(String[] args) {
        PostCategoryDAO pc = new PostCategoryDAO();
        Vector<PostCategory> list = pc.getAll();
        for (PostCategory c : list) {
            System.out.println(c.getBlog_name());
        }
    }

}
