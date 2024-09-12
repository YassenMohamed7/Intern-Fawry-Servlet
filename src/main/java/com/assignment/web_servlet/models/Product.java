package com.assignment.web_servlet.models;


public class Product {
    private int id;
    private String name;
    private double price;
    private String uid;



    public Product(int id, String name, double price, String uid) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.uid = uid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }



    @Override
    public String toString() {
        return "Product{\nname= " + name + "\nid= " + id + "\nprice= " + price + "\n}\n";
    }
}
