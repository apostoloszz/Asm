package com.example.asmjava5.service;

import java.util.List;

import com.example.asmjava5.entity.Order;
import com.example.asmjava5.entity.OrderDetail;

public interface OrderService {

    List<Order> findAll();

    Order findById(Integer id);

    void save(Order order);

    void delete(Integer id);
}