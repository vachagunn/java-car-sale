package com.example.CarSale.services;

import com.example.CarSale.entities.Image;
import com.example.CarSale.entities.Product;
import com.example.CarSale.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;

    public Page<Product> listProducts(String title, Pageable pageable) {
        if (title != null) return productRepository.findByTitle(title, pageable);
        return productRepository.findAll(pageable);
    }

    public void saveProduct(
            Product product
//            MultipartFile file1,
//            MultipartFile file2,
//            MultipartFile file3
    ) throws IOException {
//        Image image1;
//        Image image2;
//        Image image3;

//        if (file1.getSize() != 0) {
//            image1 = toImageEntity(file1);
//            image1.setPreviewImage(true);
//            product.addImageToProduct(image1);
//        }
//
//        if (file2.getSize() != 0) {
//            image2 = toImageEntity(file2);
//            product.addImageToProduct(image2);
//        }
//
//        if (file3.getSize() != 0) {
//            image3 = toImageEntity(file3);
//            product.addImageToProduct(image3);
//        }

        log.info("Saving new Product. Title: {}; Author: {}", product.getTitle(), product.getAuthor());
//        Product productFromDb = productRepository.save(product);
//        productFromDb.setPreviewImageId(productFromDb.getImages().get(0).getId());
        productRepository.save(product);
    }

    private Image toImageEntity(MultipartFile file1) throws IOException {
        Image image = new Image();
        image.setName(file1.getName());
        image.setOriginalFileName(file1.getOriginalFilename());
        image.setContentType(file1.getContentType());
        image.setSize(file1.getSize());
        image.setBytes(file1.getBytes());

        return image;
    }

    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    public Page<Product> getProduct(int page, int pageSize) {
        Pageable pageable = PageRequest.of(page - 1, pageSize);
        return productRepository.findAll(pageable);
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }
}
