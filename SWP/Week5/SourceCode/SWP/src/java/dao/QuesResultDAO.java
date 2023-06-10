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

    public Boolean insertQuesResult(int ques_id, int user_id,
            boolean ques_status, boolean ques_flag, String ques_answer) {

        xSql = "INSERT INTO Ques_Result(ques_id, user_id,\n"
                + "ques_status, ques_flag, ques_answer)\n"
                + "VALUES ( ?, ?, ?, ?, ?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, ques_id);
            ps.setInt(2, user_id);
            ps.setBoolean(3, ques_status);
            ps.setBoolean(4, ques_flag);
            ps.setString(5, ques_answer);
            
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
        Boolean inserted = pd.insertQuesResult(1, 1, true,false, "123");
        System.out.println(inserted);
    }
}
