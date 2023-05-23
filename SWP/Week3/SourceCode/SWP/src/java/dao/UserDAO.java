/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.User;
import java.sql.Date;
import java.sql.SQLException;

/**
 *
 * @author FPT
 */
public class UserDAO extends MyDAO {

    public void addNewUser(User nu) {
        xSql = "INSERT INTO [dbo].[User]([user_email],[password],[full_name],[user_img],[gender_id],[user_dob],[user_phone],[user_address],[user_wallet],[role_id],[user_time],[user_status]) \n"
                + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        String dobraw = nu.getDob().toString();
        String userTime = nu.getUserTime().toString();
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, nu.getUserEmail());
            ps.setString(2, nu.getPassword());
            ps.setString(3, nu.getFullName());
            ps.setString(4, nu.getUserImg());
            ps.setInt(5, nu.getGenderId());
            ps.setDate(6, Date.valueOf(dobraw));
            ps.setString(7, nu.getUserPhone());
            ps.setString(8, nu.getUserAddress());
            ps.setString(9, nu.getUserWallet());
            ps.setInt(10, nu.getRoleId());
            ps.setDate(11, Date.valueOf(userTime));
            ps.setInt(12, nu.getUserStatus());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public User getUserByEmail(String email) {
        xSql = "select * from [dbo].[User] WHERE [user_email] = ?";
        User uByEmail = null;
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, email);
            rs = ps.executeQuery();
            if (rs.next()) {
                uByEmail = new User(
                        rs.getInt("user_id"),
                        rs.getString("user_email"),
                        rs.getString("password"),
                        rs.getString("full_name"),
                        rs.getString("user_img"),
                        rs.getInt("gender_id"),
                        rs.getDate("user_dob"),
                        rs.getString("user_phone"),
                        rs.getString("user_address"),
                        rs.getString("user_wallet"),
                        rs.getInt("role_id"),
                        rs.getDate("user_time"),
                        rs.getByte("user_status")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return uByEmail;
    }
    public User login(String email, String password) {
        
        xSql = "SELECT * FROM [dbo].[User] WHERE [user_email] = ? AND [password] = ?";
        
        User userLogin = null;
        
        try {
            
            ps = con.prepareStatement(xSql);
            ps.setString(1, email);
            ps.setString(2, password);
            
            rs = ps.executeQuery();
            
            if(rs.next()) {
                userLogin = new User(
                        rs.getInt("user_id"), 
                        rs.getString("user_email"), 
                        rs.getString("password"),
                        rs.getString("full_name"), 
                        rs.getString("user_img"), 
                        rs.getInt("gender_id"), 
                        rs.getDate("user_dob"),
                        rs.getString("user_phone"), 
                        rs.getString("user_address"),
                        rs.getString("user_wallet"),
                        rs.getInt("role_id"), 
                        rs.getDate("user_time"),
                        rs.getByte("user_status")
                );
            }
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return userLogin;
    }
}
