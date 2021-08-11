package model;

import java.sql.Date;
import java.util.ArrayList;

public class Bill {

    private int billID;
    private int accountID;
    private long total;
    private String payment;
    private String address;
    private Date date;
    private String name;
    private String phone;

    public Bill() {
    }
    
 
    public Bill(int billID, int accountID, long total, String payment, String address, Date date, String name, String phone) {
        this.billID = billID;
        this.accountID = accountID;
        this.total = total;
        this.payment = payment;
        this.address = address;
        this.date = date;
        this.name = name;
        this.phone = phone;
    }

    public Bill(int accountID, long total, String payment, String address, Date date, String name, String phone) {
        this.accountID = accountID;
        this.total = total;
        this.payment = payment;
        this.address = address;
        this.date = date;
        this.name = name;
        this.phone = phone;
    }

    public int getBillID() {
        return billID;
    }

    public void setBillID(int billID) {
        this.billID = billID;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public long getTotal() {
        return total  ;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

}
