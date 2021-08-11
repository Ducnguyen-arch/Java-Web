package model;

public class BillDetail {

    private int billDetailID;
    private String bookID;
    private int accountID;
    private String bookName;
    private String bookImage;
    private long price;
    private int quantity;

    public BillDetail() {
    }

    public BillDetail(int billDetailID, String bookID, int accountID, String bookName, String bookImage, long price, int quantity) {
        this.billDetailID = billDetailID;
        this.bookID = bookID;
        this.accountID = accountID;
        this.bookName = bookName;
        this.bookImage = bookImage;
        this.price = price;
        this.quantity = quantity;
    }

    public BillDetail(String bookID, int accountID, String bookName, String bookImage, long price, int quantity) {
        this.bookID = bookID;
        this.accountID = accountID;
        this.bookName = bookName;
        this.bookImage = bookImage;
        this.price = price;
        this.quantity = quantity;
    }

    public int getBillDetailID() {
        return billDetailID;
    }

    public void setBillDetailID(int billDetailID) {
        this.billDetailID = billDetailID;
    }

    public String getBookID() {
        return bookID;
    }

    public void setBookID(String bookID) {
        this.bookID = bookID;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getBookImage() {
        return bookImage;
    }

    public void setBookImage(String bookImage) {
        this.bookImage = bookImage;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

}
