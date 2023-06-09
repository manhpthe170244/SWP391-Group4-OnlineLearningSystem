/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Date;
import java.sql.SQLException;
import javax.xml.transform.Source;

/**
 *
 * @author Uslaptop
 */
public class QuizResultDAO extends MyDAO {

    public void insertQuizResult(int quiz_result_id, int quiz_id, int user_id, boolean quiz_status,
            float quiz_grade, Date quiz_start, Date quiz_end,
            int attempt) {

        xSql = "INSERT INTO Quiz_Result(quiz_result_id, quiz_id, user_id,\n"
                + "quiz_status, quiz_grade, quiz_start, quiz_end, attempt)\n"
                + "VALUES (?, ?, ?, ?,?,?,?,?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, quiz_result_id);
            ps.setInt(2, quiz_id);
            ps.setInt(3, user_id);
            ps.setBoolean(4, quiz_status);
            ps.setFloat(5, quiz_grade);
            ps.setDate(6, quiz_start);
            ps.setDate(7, quiz_end);
            ps.setInt(8, attempt);

        } catch (SQLException ex) {
            System.out.println("checkQuiz: " + ex.getMessage());

        }

    }

    public static void main(String[] args) {
        QuizResultDAO pd = new QuizResultDAO();
        System.out.println("Test insertQuizResult");
        pd.insertQuizResult(1, 2, 3, true, 5, Date.valueOf("06-05-2022"), Date.valueOf("06-06-2022"), 0);

    }
}
