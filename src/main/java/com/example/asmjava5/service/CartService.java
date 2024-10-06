package com.example.asmjava5.service;


import com.example.asmjava5.entity.Cart;

import java.util.List;


public interface CartService {

    List<Cart> findAll();

    Cart findById(Integer id);

    void save(Cart cart);

    void delete(Integer id);
}
