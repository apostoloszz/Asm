package com.example.asmjava5.service;

import com.example.asmjava5.entity.Category;

import java.util.List;

public interface CategoryService {

    List<Category> findAll();

    Category findById(Integer id);

    void save(Category category);

    void delete(Integer id);
}