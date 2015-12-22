package com.tgb.model;

public class Book {

    private String barcode;
    public String getBarcode() {
        return barcode;
    }
    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }

    // 图书名称
    private String bookName;
    public String getBookName() {
        return bookName;
    }
    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    /*ͼ���������*/
    private int bookType;
    public int getBookType() {
        return bookType;
    }
    public void setBookType(int bookType) {
        this.bookType = bookType;
    }

    private String bookTypeName;  
    public String getBookTypeName() {
		return bookTypeName;
	}
	public void setBookTypeName(String bookTypeName) {
		this.bookTypeName = bookTypeName;
	}

	/*ͼ��۸�*/
    private float price;
    public float getPrice() {
        return price;
    }
    public void setPrice(float price) {
        this.price = price;
    }

    /*���*/
    private int count;
    public int getCount() {
        return count;
    }
    public void setCount(int count) {
        this.count = count;
    }

    /*��������*/
    private String publishDate;
    public String getPublishDate() {
        return publishDate;
    }
    public void setPublishDate(String publishDate) {
        this.publishDate = publishDate;
    }

    /*������*/
    private String publish;
    public String getPublish() {
        return publish;
    }
    public void setPublish(String publish) {
        this.publish = publish;
    }

    /*ͼ����*/
    private String introduction;
    public String getIntroduction() {
        return introduction;
    }
    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    /*ͼ��ͼƬ*/
    private String bookPhoto;
    public String getBookPhoto() {
        return bookPhoto;
    }
    public void setBookPhoto(String bookPhoto) {
        this.bookPhoto = bookPhoto;
    }
}

