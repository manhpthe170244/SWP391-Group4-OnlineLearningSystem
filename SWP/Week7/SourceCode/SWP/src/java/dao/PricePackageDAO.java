/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Price_Package;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Uslaptop
 */
public class PricePackageDAO extends MyDAO {

    public Vector<Price_Package> getAll() {
        Vector<Price_Package> vector = new Vector<Price_Package>();
        xSql = "select* from Price_Package";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int package_id = rs.getInt("package_id");
                String package_name = rs.getString("package_name");
                int duration = rs.getInt("duration");
                boolean pack_status = rs.getBoolean("pack_status");
                float price = rs.getFloat("price");
                String description = rs.getString("description");
                Price_Package pc = new Price_Package(package_id, package_name, duration, pack_status, price, description);
                vector.add(pc);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PricePackageDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }

    public static void main(String[] args) {
        PricePackageDAO pc = new PricePackageDAO();
        Vector<Price_Package> list = pc.getAll();
        for (Price_Package c : list) {
            System.out.println(c.getDescription());
        }
    }

}
