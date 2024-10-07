package com.example.asmjava5.DAO;

import java.util.List;

import com.example.asmjava5.entity.Category;
import com.example.asmjava5.entity.Product;
import com.example.asmjava5.res.ProductRepository;
import com.example.asmjava5.service.CategoryService;
import com.example.asmjava5.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private CategoryService categoryService;

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public Product findById(Integer id) {
        return productRepository.findById(id).orElse(null);
    }

    @Override
    public void save(Product product) {
        productRepository.save(product);
    }

    @Override
    public void delete(Integer id) {
        productRepository.deleteById(id);
    }

    @Override
    public List<Category> findAllCategories() {
        return categoryService.findAll();
    }
}