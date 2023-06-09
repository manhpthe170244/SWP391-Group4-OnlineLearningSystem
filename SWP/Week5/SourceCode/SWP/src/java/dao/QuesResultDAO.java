/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author Uslaptop
 */
public class QuesResultDAO extends MyDAO {

    public Boolean insertQuesResult(int ques_result_id, int ques_id, int user_id,
            boolean ques_status, boolean ques_flag, int ques_answer) {

        xSql = "INSERT INTO Ques_Result(ques_result_id, ques_id, user_id,\n"
                + "ques_status, ques_flag, ques_answer)\n"
                + "VALUES ( ?, ?, ?, ?, ?, ?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, ques_result_id);
            ps.setInt(2, ques_id);
            ps.setInt(3, user_id);
            ps.setBoolean(4, ques_status);
            ps.setBoolean(5, ques_flag);
            ps.setInt(6, ques_answer);
            
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
        QuesResultDAO pd = new QuesResultDAO();
        System.out.println("Test insertQuesResult");
        Boolean inserted = pd.insertQuesResult(2, 3, 5, true,false, 4);
        System.out.println(inserted);
    }
}
