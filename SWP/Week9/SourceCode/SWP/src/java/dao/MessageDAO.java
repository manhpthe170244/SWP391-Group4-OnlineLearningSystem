/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

/**
 *
 * @author FPT
 */
public class MessageDAO extends MyDAO {

    public void SendMessage(int sender, int receiver, String content) {
        xSql = "insert into contact(user1_id, user2_id, content) values (?, ?, ?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, sender);
            ps.setInt(2, receiver);
            ps.setString(3, content);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}
