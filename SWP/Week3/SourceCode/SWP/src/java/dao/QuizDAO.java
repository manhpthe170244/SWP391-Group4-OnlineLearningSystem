/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Quiz;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Uslaptop
 */
public class QuizDAO extends MyDAO {

    public Vector<Quiz> getAll() {
        Vector<Quiz> vector = new Vector<Quiz>();
        xSql = "select*from Quiz";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int quiz_id = rs.getInt("quiz_id");
                String quiz_name = rs.getString("quiz_name");
                String quiz_desc = rs.getString("quiz_desc");
                int section_id = rs.getInt("section_id");
                boolean quiz_status = rs.getBoolean("quiz_status");
                Quiz quiz = new Quiz(quiz_id, quiz_name, quiz_desc, section_id, quiz_status);
                vector.add(quiz);
            }
        } catch (SQLException ex) {
            Logger.getLogger(QuizDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }
}
