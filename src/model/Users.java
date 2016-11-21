package model;

import java.sql.Date;

/**
 *
 * @author Kelvin
 */
public class Users {
    private String UserName;
    private String Password;
    private String Fullname;
    private String Gender;
    private Date Birthday;
    private String NumberPhone;
    private String Address;
    private String Email;
    private String roleId;
    public Users() {
    }

    public Users(String UserName, String Password, String Fullname, String Gender, Date Birthday, String NumberPhone, String Address, String Email, String roleId) {
        this.UserName = UserName;
        this.Password = Password;
        this.Fullname = Fullname;
        this.Gender = Gender;
        this.Birthday = Birthday;
        this.NumberPhone = NumberPhone;
        this.Address = Address;
        this.Email = Email;
        this.roleId = roleId;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getFullname() {
        return Fullname;
    }

    public void setFullname(String Fullname) {
        this.Fullname = Fullname;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public Date getBirthday() {
        return Birthday;
    }

    public void setBirthday(Date Birthday) {
        this.Birthday = Birthday;
    }

    public String getNumberPhone() {
        return NumberPhone;
    }

    public void setNumberPhone(String NumberPhone) {
        this.NumberPhone = NumberPhone;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    
}