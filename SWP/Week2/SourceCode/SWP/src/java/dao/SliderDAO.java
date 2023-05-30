/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Slider;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Uslaptop
 */
public class SliderDAO extends MyDAO {

    public Vector<Slider> getAll() {
        Vector<Slider> vector = new Vector<Slider>();
        xSql = "select*from Slider";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int slider_id = rs.getInt("slider_id");
                String slider_title = rs.getString("slider_title");
                String slider_img = rs.getString("slider_img");
                String slider_link = rs.getString("slider_link");
                boolean slider_status = rs.getBoolean("slider_status");
                String slider_note = rs.getString("slider_note");
                Slider sl = new Slider(slider_id, slider_title, slider_img, slider_link, slider_status, slider_note);
                vector.add(sl);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SliderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;

    }

    public static void main(String[] args) {
        SliderDAO pc = new SliderDAO();
        Vector<Slider> list = pc.getAll();
        for (Slider c : list) {
            System.out.println(c.getSlider_link());
        }
    }

}
