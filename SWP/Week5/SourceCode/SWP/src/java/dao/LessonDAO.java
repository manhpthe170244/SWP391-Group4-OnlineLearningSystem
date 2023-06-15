/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.LessonDto;
import entity.Course;
import entity.Lesson;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Uslaptop
 */
public class LessonDAO extends MyDAO {

    public Vector<Lesson> getAll() {
        Vector<Lesson> vector = new Vector<Lesson>();
        xSql = "select*from Lesson";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int lesson_id = rs.getInt("lesson_id");
                String lesson_name = rs.getString("lesson_name");
                String lesson_video = rs.getString("lesson_video");
                int section_id = rs.getInt("section_id");
                String lesson_desc = rs.getString("lesson_desc");
                boolean lesson_status = rs.getBoolean("lesson_status");
                Lesson les = new Lesson(lesson_id, lesson_name, lesson_video, section_id, lesson_desc, lesson_status);
                vector.add(les);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LessonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }

    public Vector<Lesson> getLessonBySectionId(int SectionId) {
        xSql = "select l.* from Lesson l, Section s\n"
                + "where l.section_id = s.section_id\n"
                + "and s.section_id = ?";
        Vector<Lesson> vector = new Vector<>();
        int lessonId;
        String lessonName;
        String lessonVideo;
        String lessonDesc;
        boolean lesson_Status;
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, SectionId);
            rs = ps.executeQuery();
            while (rs.next()) {
                lessonId = rs.getInt("lesson_id");
                lessonName = rs.getString("lesson_name");
                lessonVideo = rs.getString("lesson_video");
                lessonDesc = rs.getString("lesson_desc");
                lesson_Status = rs.getBoolean("lesson_status");
                Lesson les = new Lesson(lessonId, lessonName, lessonVideo, SectionId, lessonDesc, lesson_Status);
                vector.add(les);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LessonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }

    public LessonDto getLessonDetails(int lId) {
        LessonDto lesson = null;
        xSql = "select * from Lesson as l join Section as s on l.section_id = s.section_id join Course c  on s.course_id = c.course_id where l.lesson_id = ? and s.section_id is not null";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, lId);
            rs = ps.executeQuery();
            while (rs.next()) {
                int lesson_id = rs.getInt("lesson_id");
                String lesson_name = rs.getString("lesson_name");
                String lesson_video = rs.getString("lesson_video");
                int section_id = rs.getInt("section_id");
                String lesson_desc = rs.getString("lesson_desc");
                boolean lesson_status = rs.getBoolean("lesson_status");
                int course_id = rs.getInt("course_id");
                String course_name = rs.getString("course_name");
                String course_img = rs.getString("course_img");
                float course_price = rs.getFloat("course_price");
                String course_desc = rs.getString("course_desc");
                Date last_update = rs.getDate("last_update");
                int sub_id = rs.getInt("sub_id");
                int level_id = rs.getInt("level_id");
                Boolean course_status = rs.getBoolean("course_status");
                int duration = rs.getInt("durationDAY");
                String courseTitle = rs.getString("course_Title");
                Course course = new Course(course_id, course_name, course_img, course_price, course_desc, last_update.toString(), sub_id, level_id, course_status, duration, courseTitle);
                lesson = new LessonDto(lesson_id, lesson_name, lesson_video, section_id, lesson_desc, lesson_status, course);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LessonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lesson;
    }
    
    public void SetLessonStatus(int UpdateStatus,int lessonId){
        xSql = "update Lesson set lesson_status = ? where lesson_id = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, UpdateStatus);
            ps.setInt(2, lessonId);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(LessonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
