/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Uslaptop
 */
public class Price_Package {

    int package_id;
    String package_name;
    int duration;
    boolean pack_status;
    float multiple;
    String description;

    public Price_Package() {
    }

    public Price_Package(int package_id, String package_name, int duration, boolean pack_status, float multiple, String description) {
        this.package_id = package_id;
        this.package_name = package_name;
        this.duration = duration;
        this.pack_status = pack_status;
        this.multiple = multiple;
        this.description = description;
    }

    public int getPackage_id() {
        return package_id;
    }

    public void setPackage_id(int package_id) {
        this.package_id = package_id;
    }

    public String getPackage_name() {
        return package_name;
    }

    public void setPackage_name(String package_name) {
        this.package_name = package_name;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public boolean isPack_status() {
        return pack_status;
    }

    public void setPack_status(boolean pack_status) {
        this.pack_status = pack_status;
    }

    public float getMultiple() {
        return multiple;
    }

    public void setMultiple(float multiple) {
        this.multiple = multiple;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
