package com.example.asmjava5.controller;

import com.example.asmjava5.entity.Product;
import com.example.asmjava5.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping
    public String list(Model model) {
        model.addAttribute("products", productService.findAll());
        return "product/product";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("categories", productService.findAllCategories());
        return "product/product-add";
    }

    @PostMapping("/add")
    public String add(@ModelAttribute Product product, @RequestParam("image") MultipartFile image) {
        if (!image.isEmpty()) {
            product.setImageUrl(image.getOriginalFilename());
            productService.save(product);
            try {
                byte[] bytes = image.getBytes();
                BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File("src/main/resources/static/images/" + image.getOriginalFilename())));
                stream.write(bytes);
                stream.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return "redirect:/product";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Integer id, Model model) {
        model.addAttribute("product", productService.findById(id));
        model.addAttribute("categories", productService.findAllCategories());
        return "product/product-edit";
    }

    @PostMapping("/edit/{id}")
    public String edit(@PathVariable Long id, @ModelAttribute("product") Product product, @RequestParam("image") MultipartFile image) {
        if (!image.isEmpty()) {
            product.setImageUrl(image.getOriginalFilename());
            productService.save(product);
            try {
                byte[] bytes = image.getBytes();
                BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File("src/main/resources/static/images/" + image.getOriginalFilename())));
                stream.write(bytes);
                stream.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            productService.save(product);
        }
        return "redirect:/product";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable Integer id) {
        productService.delete(id);
        return "redirect:/product";
    }
}