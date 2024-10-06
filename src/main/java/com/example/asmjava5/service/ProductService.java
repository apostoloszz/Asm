package com.example.asmjava5.service;

import com.example.asmjava5.entity.Category;
import com.example.asmjava5.entity.Product;

import java.util.List;

public interface ProductService {

    List<Product> findAll();

    Product findById(Long id);

    void save(Product product);

    void delete(Long id);

    List<Category> findAllCategories();
}