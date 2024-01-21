package com.example.CarSale.entities;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Product {
    private long Id;
    private String title;
    private int year;
    private float mileage;
    private String engine;
    private float capacity;
    private int power;
    private String description;
    private float price;
    private String city;
    private String author;
}
