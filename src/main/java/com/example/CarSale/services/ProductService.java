package com.example.CarSale.services;

import com.example.CarSale.entities.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;

    {
        products.add(new Product(
                ++ID,
                "Mercedes-Benz GL 350",
                2014,
                250.000F,
                "Дизель",
                3.0F,
                249,
                "Отличное состояние",
                2500000F,
                "Екатеринбург",
                "Шахназарян Вачик"
        ));

        products.add(new Product(
                ++ID,
                "Kia Rio",
                2021,
                30.000F,
                "Бензин",
                1.6F,
                123,
                "Одним словом - бархат",
                2000000F,
                "Екатеринбург",
                "Шахназарян Вачик"
        ));
    }

    public List<Product> listProducts() {
        return products;
    }

    public void saveProduct(Product product) {
        product.setId(++ID);
        products.add(product);
    }

    public void deleteProduct(Long id) {
        products.removeIf(product -> product.getId() == id);
    }

    public Product getProductById(Long id) {
        for (Product product : products) {
            if (product.getId() == id) return product;
        }

        return null;
    }
}
