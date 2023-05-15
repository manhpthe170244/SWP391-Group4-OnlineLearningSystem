/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.user;

/**
 *
 * @author FPT
 */
public class userDAO extends MyDAO {

    public void addNewUser(user nu) {
        xSql = "INSERT INTO [dbo].[User]\n"
                + "          ([user_email]\n"
                + "          ([password]\n"
                + "          ([full_name]\n"
                + "          ([user_img]\n"
                + "          ([gender_id]\n"
                + "          ([user_dob]\n"
                + "          ([user_phone]\n"
                + "          ([user_address]\n"
                + "          ([user_wallet]\n"
                + "          ([role_id]\n"
                + "          ([user_time]\n"
                + "          ([user_status]\n"
                + "     VALUES (?,?,?,?,?,?,?,?,?,?,?,?) ";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(2, nu.getUserEmail());
            ps.setString(3, nu.getPassword());
            ps.setString(4, nu.getFullName());
            ps.setString(5, nu.getUserImg());
            ps.setInt(6, nu.getGenderId());
            ps.setDate(7, nu.getDob());
            ps.setString(8, nu.getUserPhone());
            ps.setString(9, nu.getUserAddress());
            ps.setString(10, nu.getUserWallet());
            ps.setInt(11, nu.getRoleId());
            ps.setDate(12, nu.getUserTime());
            ps.setInt(13, nu.getUserStatus());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
