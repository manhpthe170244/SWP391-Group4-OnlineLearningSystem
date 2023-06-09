/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Timestamp;
import java.sql.SQLException;
import java.sql.Time;
import java.time.LocalTime;
import javax.xml.transform.Source;

/**
 *
 * @author Uslaptop
 */
public class QuizResultDAO extends MyDAO {

    public Boolean insertQuizResult(int quiz_id, int user_id, boolean quiz_status,
            float quiz_grade, Timestamp quiz_start, Timestamp quiz_end,
            int attempt) {

        xSql = "INSERT INTO Quiz_Result(quiz_id, user_id,\n"
                + "quiz_status, quiz_grade, quiz_start, quiz_end, attempt)\n"
                + "VALUES (?, ?, ?, ?, ?, ?, ?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, quiz_id);
            ps.setInt(2, user_id);
            ps.setBoolean(3, quiz_status);
            ps.setFloat(4, quiz_grade);
            ps.setTimestamp(5, quiz_start);
            ps.setTimestamp(6, quiz_end);
            ps.setInt(7, attempt);
            int row = ps.executeUpdate();
            if (row > 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            return false;
        }
    }

    public static void main(String[] args) {
        QuizResultDAO pd = new QuizResultDAO();
        System.out.println("Test insertQuizResult");
        Boolean inserted = pd.insertQuizResult(2, 3, true, 5, Timestamp.valueOf("2023-06-09 09:32:53"), Timestamp.valueOf("2023-06-09 09:37:53"), 1);
        System.out.println(inserted);
    }
}
