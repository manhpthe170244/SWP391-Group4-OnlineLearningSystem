/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

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
}
