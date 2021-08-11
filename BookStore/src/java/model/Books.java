package model;

public class Books {

    private String bookID;
    private int categoryID;
    private String bookName;
    private String bookImage;
    private long bookPrice;
    private String bookDescription;

    public Books() {
    }

    public Books(String bookID, int categoryID, String bookName, String bookImage, long bookPrice, String bookDescription) {
        this.bookID = bookID;
        this.categoryID = categoryID;
        this.bookName = bookName;
        this.bookImage = bookImage;
        this.bookPrice = bookPrice;
        this.bookDescription = bookDescription;
    }

    public String getBookID() {
        return bookID;
    }

    public void setBookID(String bookID) {
        this.bookID = bookID;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
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

    public long getBookPrice() {
        return bookPrice;
    }

    public void setBookPrice(long bookPrice) {
        this.bookPrice = bookPrice;
    }

    public String getBookDescription() {
        return bookDescription;
    }

    public void setBookDescription(String bookDescription) {
        this.bookDescription = bookDescription;
    }

}
