/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entity.Course;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.DBConnect;

/**
 *
 * @author ACER
 */
public class CourseDAO extends DBConnect {

    public int addCourse(Course course) {
        int n = 0;
        String sql = "INSERT INTO [dbo].[Course]\n"
                + "           ([course_id]\n"
                + "           ,[course_name]\n"
                + "           ,[course_title]\n"
                + "           ,[course_img]\n"
                + "           ,[course_price]\n"
                + "           ,[course_desc]\n"
                + "           ,[course_start]\n"
                + "           ,[course_stop]\n"
                + "           ,[course_public]\n"
                + "           ,[sub_id])\n"
                + "           ,[lecturer_id])\n"
                + "           ,[level_id])\n"
                + "           ,[course_status])\n"
                + "     VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?) ";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, course.getCourse_id());
            pre.setString(2, course.getCourse_name());
            pre.setString(3, course.getCourse_title());
            pre.setString(4, course.getCourse_img());
            pre.setFloat(5, course.getCourse_price());
            pre.setString(6, course.getCourse_desc());
            pre.setString(7, course.getCourse_start());
            pre.setString(8, course.getCourse_stop());
            pre.setString(9, course.getCourse_public());
            pre.setInt(10, course.getSub_id());
            pre.setInt(10, course.getLecturer_id());
            pre.setInt(10, course.getLevel_id());
            pre.setBoolean(10, course.getCourse_status());
            n = pre.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return n;
    }

    public Vector<Course> getAll() {
        Vector<Course> vector = new Vector<Course>();
        String sql = "select * from Course";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                String course_id = rs.getString("course_id");
                String course_name=  rs.getString("course_name");
                String course_title = rs.getString("course_title");
                String course_img = rs.getString("course_img");
                float course_price = rs.getFloat("course_price");
                String course_desc = rs.getString("course_desc");
                String course_start = rs.getString("course_start");
                String course_stop = rs.getString("course_stop");
                String course_public = rs.getString("course_public");
                int sub_id = rs.getInt("sub_id");
                int lecturer_id = rs.getInt("lecturer_id");
                int level_id = rs.getInt("level_id");
                Boolean course_status = rs.getBoolean("course_status");

                // create object
                Course course = new Course(course_id, 
                        course_name, 
                        course_title, 
                        course_img, 
                        course_price, 
                        course_desc, 
                        course_start,
                        course_stop,
                        course_public, 
                        sub_id, 
                        lecturer_id, 
                        level_id, 
                        course_status);
                vector.add(course);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }
    
    public static void main(String[] args) {
        
    }
}
