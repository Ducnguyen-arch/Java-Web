package model;

import java.sql.Date;

public class Contact {

    private int contactID;
    private String contactName;
    private String contactEmail;
    private String contactTitle;
    private String contactMessage;
    private Date contactDate;

    public Contact() {
    }

    public Contact(int contactID, String contactName, String contactEmail, String contactTitle, String contactMessage, Date contactDate) {
        this.contactID = contactID;
        this.contactName = contactName;
        this.contactEmail = contactEmail;
        this.contactTitle = contactTitle;
        this.contactMessage = contactMessage;
        this.contactDate = contactDate;
    }

    public Contact(String contactName, String contactEmail, String contactTitle, String contactMessage, Date contactDate) {
        this.contactName = contactName;
        this.contactEmail = contactEmail;
        this.contactTitle = contactTitle;
        this.contactMessage = contactMessage;
        this.contactDate = contactDate;
    }

    public int getContactID() {
        return contactID;
    }

    public void setContactID(int contactID) {
        this.contactID = contactID;
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }

    public String getContactTitle() {
        return contactTitle;
    }

    public void setContactTitle(String contactTitle) {
        this.contactTitle = contactTitle;
    }

    public String getContactMessage() {
        return contactMessage;
    }

    public void setContactMessage(String contactMessage) {
        this.contactMessage = contactMessage;
    }

    public Date getContactDate() {
        return contactDate;
    }

    public void setContactDate(Date contactDate) {
        this.contactDate = contactDate;
    }

}
