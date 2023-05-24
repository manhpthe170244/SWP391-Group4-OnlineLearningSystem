/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author FPT
 */
import java.sql.Date;


public class User {
    int userId; 
    String userEmail;
    String password; 
    String fullName;
    String userImg;
    int genderId;
    Date dob;
    String userPhone;
    String userAddress;
    String userWallet;
    int roleId;
    Date userTime;
    int userStatus;

    public User(int userId, String userEmail, String password, String fullName, String userImg, int genderId, Date dob, String userPhone, String userAddress, String userWallet, int roleId, Date userTime, int userStatus) {
        this.userId = userId;
        this.userEmail = userEmail;
        this.password = password;
        this.fullName = fullName;
        this.userImg = userImg;
        this.genderId = genderId;
        this.dob = dob;
        this.userPhone = userPhone;
        this.userAddress = userAddress;
        this.userWallet = userWallet;
        this.roleId = roleId;
        this.userTime = userTime;
        this.userStatus = userStatus;
    }

    
    
    
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getUserImg() {
        return userImg;
    }

    public void setUserImg(String userImg) {
        this.userImg = userImg;
    }

    public int getGenderId() {
        return genderId;
    }

    public void setGenderId(int genderId) {
        this.genderId = genderId;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public String getUserWallet() {
        return userWallet;
    }

    public void setUserWallet(String userWallet) {
        this.userWallet = userWallet;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public Date getUserTime() {
        return userTime;
    }

    public void setUserTime(Date userTime) {
        this.userTime = userTime;
    }

    public int getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(int userStatus) {
        this.userStatus = userStatus;
    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", userEmail=" + userEmail + ", password=" + password + ", fullName=" + fullName + ", userImg=" + userImg + ", genderId=" + genderId + ", dob=" + dob + ", userPhone=" + userPhone + ", userAddress=" + userAddress + ", userWallet=" + userWallet + ", roleId=" + roleId + ", userTime=" + userTime + ", userStatus=" + userStatus + '}';
    }
    
    
    
}
