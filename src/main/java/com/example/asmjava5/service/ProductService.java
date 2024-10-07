package com.example.asmjava5.service;

import com.example.asmjava5.entity.Category;
import com.example.asmjava5.entity.Product;

import java.util.List;

public interface ProductService {

    List<Product> findAll();

    Product findById(Integer id);

    void save(Product product);

    void delete(Integer id);

    List<Category> findAllCategories();
}