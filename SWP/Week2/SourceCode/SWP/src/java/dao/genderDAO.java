/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.gender;
import java.util.Vector;

/**
 *
 * @author FPT
 */
public class genderDAO extends MyDAO{
    public Vector<gender> getAllGender(){
        xSql = "select * from Gender";
        Vector<gender> gv = new Vector<>();
        int xgenderId;
        String xgenderName;
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while(rs.next()){
                xgenderId = rs.getInt("gender_id");
                xgenderName = rs.getString("gender_name");
                gv.add(new gender(xgenderId, xgenderName));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return gv;
    }
}
