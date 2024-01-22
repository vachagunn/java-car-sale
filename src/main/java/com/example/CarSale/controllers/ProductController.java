package com.example.CarSale.controllers;

import com.example.CarSale.entities.Product;
import com.example.CarSale.repositories.ProductRepository;
import com.example.CarSale.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;
    private final ProductRepository productRepository;

    @GetMapping("/")
    public String products(
            @RequestParam(name = "title", required = false) String title,
            Model model,
            Integer pageNumber
    ) {
        if (pageNumber == null) pageNumber = 0;
        model.addAttribute("products", productRepository.findAll(PageRequest.of(pageNumber, 6)));
        model.addAttribute("products", productService.listProducts(title));
        return "products";
    }

    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        model.addAttribute("images", product.getImages());
        return "product-info";
    }

    @PostMapping("/product/create")
    public String createProduct(
//            @RequestParam("file1") MultipartFile file1,
//            @RequestParam("file2") MultipartFile file2,
//            @RequestParam("file3") MultipartFile file3,
            Product product
    ) throws IOException {
//        productService.saveProduct(product, file1, file2, file3);
        productService.saveProduct(product);

        return "redirect:/";
    }

    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        return "redirect:/";
    }
}
