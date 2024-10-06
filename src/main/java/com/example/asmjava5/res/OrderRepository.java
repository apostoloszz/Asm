package com.example.asmjava5.res;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.asmjava5.entity.Order;

public interface OrderRepository extends JpaRepository<Order, Integer> {

}