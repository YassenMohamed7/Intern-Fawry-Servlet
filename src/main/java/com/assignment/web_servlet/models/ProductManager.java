package com.assignment.web_servlet.models;

import java.util.ArrayList;
import java.util.stream.Collectors;


public class ProductManager {
    public static ArrayList<Product> products = new ArrayList<>();

    public static void add(Product product){
        products.add(product);

    }

    public static ArrayList<Product> getProducts(){
        return products;
    }

    public static ArrayList<Product> getSpecificProducts(String uid){
       return  (ArrayList<Product>) products.stream()
                .filter(product -> product.getUid().equals(uid)).collect(Collectors.toList());
    }
}
