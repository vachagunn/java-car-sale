package com.example.CarSale.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "cars")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long Id;

    @Column(name = "brand")
    private String title;

    @Column(name = "year")
    private String year;

    @Column(name = "mileage")
    private float mileage;

    @Column(name = "type")
    private String engine;

    @Column(name = "capacity")
    private String capacity;

    @Column(name = "power")
    private int power;

    @Column(name = "description", columnDefinition = "text")
    private String description;

    @Column(name = "price")
    private long price;

    @Column(name = "city")
    private String city;

    @Column(name = "author")
    private String author;
}
