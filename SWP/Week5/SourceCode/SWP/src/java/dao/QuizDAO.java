/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Choice;
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
                // Them question list
                //Quiz quiz = new Quiz(quiz_id, quiz_name, quiz_desc, section_id, quiz_status);
                //vector.add(quiz);
            }
        } catch (SQLException ex) {
            Logger.getLogger(QuizDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }

    public Vector<Choice> getChoicebyQuestionId(int search_ques_id) {
        Vector<Choice> vector = new Vector<Choice>();

        xSql = "select*from choices where ques_id= ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, search_ques_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                int choice_id = rs.getInt("choice_id");
                String choice_content = rs.getString("choice_content");
                boolean is_true = rs.getBoolean("is_true");
                int ques_id = rs.getInt("ques_id");
                Choice ch = new Choice(choice_id, choice_content, is_true, ques_id);
                vector.add(ch);
            }
        } catch (Exception e) {
            System.out.println("checkCourse: " + e.getMessage());
        }
        return vector;
    }
    public static void main(String[] args) {
       QuizDAO qd = new QuizDAO();
        System.out.println("Test getChoicebyQuestionId");
        Vector<Choice> cv1 = qd.getChoicebyQuestionId(2);
        for (Choice c : cv1) {
            System.out.println(c);
        }
    }
}
