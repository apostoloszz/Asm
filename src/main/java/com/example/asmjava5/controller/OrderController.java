package com.example.asmjava5.controller;

import com.example.asmjava5.entity.Order;
import com.example.asmjava5.entity.OrderDetail;
import com.example.asmjava5.entity.Product;
import com.example.asmjava5.service.OrderService;
import com.example.asmjava5.service.ProductService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.ArrayList;


@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private ProductService productService;

    @GetMapping
    public String list(Model model) {
        try {
            model.addAttribute("orders", orderService.findAll());
            return "order/order";
        } catch (Exception e) {
            return "error";
        }
    }

    @GetMapping("/add")
    public String add(Model model) {
        try {
            model.addAttribute("order", new Order());
            model.addAttribute("products", productService.findAll());
            return "order/order-add";
        } catch (Exception e) {
            return "error";
        }
    }

    @PostMapping("/add")
    public String add(@Valid @ModelAttribute("order") Order order, BindingResult result) {
        if (result.hasErrors()) {
            return "order/order-add";
        }
        try {
            if (order.getOrderDetails() == null) {
                order.setOrderDetails(new ArrayList<>());
            }
            calculateTotalPrice(order);
            orderService.save(order);
            return "redirect:/order";
        } catch (Exception e) {
            return "error";
        }
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Integer id, Model model) {
        try {
            Order order = orderService.findById(id);
            if (order == null) {
                return "error";
            }
            model.addAttribute("order", order);
            model.addAttribute("products", productService.findAll());
            return "order/order-edit";
        } catch (Exception e) {
            return "error";
        }
    }

    @PostMapping("/edit/{id}")
    public String edit(@PathVariable Integer id, @Valid @ModelAttribute("order") Order order, BindingResult result) {
        if (result.hasErrors()) {
            return "order/order-edit";
        }
        try {
            Order existingOrder = orderService.findById(id);
            if (existingOrder == null) {
                return "error";
            }
            existingOrder.setOrderDetails(order.getOrderDetails());
            existingOrder.setStatus(order.getStatus());
            existingOrder.setOrderDate(order.getOrderDate());

            if (existingOrder.getOrderDetails() == null) {
                existingOrder.setOrderDetails(new ArrayList<>());
            }
            calculateTotalPrice(existingOrder);
            orderService.save(existingOrder);
            return "redirect:/order";
        } catch (Exception e) {
            return "error";
        }
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable Integer id) {
        try {
            if (id == null) {
                return "error";
            }
            orderService.delete(id);
            return "redirect:/order";
        } catch (Exception e) {
            return "error";
        }
    }

    private void calculateTotalPrice(Order order) {
        if (order.getOrderDetails() == null) {
            return;
        }
        BigDecimal total = BigDecimal.ZERO;
        for (OrderDetail detail : order.getOrderDetails()) {
            Product product = detail.getProduct();
            if (product == null) {
                continue;
            }
            detail.setPrice(product.getPrice());
            BigDecimal itemTotal = product.getPrice().multiply(new BigDecimal(detail.getQuantity()));
            total = total.add(itemTotal);
        }
        order.setTotalPrice(total);
    }
}