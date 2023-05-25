/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Subject;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Uslaptop
 */
public class SubjectDAO extends MyDAO {

    public Vector<Subject> getAll() {
        Vector<Subject> vector = new Vector<Subject>();
        xSql = "select* from Subject";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int sub_id = rs.getInt("sub_id");
                String sub_name = rs.getString("sub_name");
                String sub_img = rs.getString("sub_img");
                String sub_desc = rs.getString("sub_desc");

                // create object
                Subject sub = new Subject(sub_id, sub_name, sub_img, sub_desc);
                vector.add(sub);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;

    }
}
