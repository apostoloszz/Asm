package com.example.asmjava5.controller;

import com.example.asmjava5.entity.Cart;
import com.example.asmjava5.service.AccountService;
import com.example.asmjava5.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private AccountService accountService;
    @Autowired
    private CartService cartService;

    @GetMapping
    public String list(Model model) {
        model.addAttribute("carts", cartService.findAll());
        return "cart/cart";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("cart", new Cart());
        model.addAttribute("accounts", accountService.findAll());
        return "cart/cart-add";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Integer id, Model model) {
        if (id == null) {
            return "redirect:/cart";
        }
        Cart cart = cartService.findById(id);
        if (cart == null) {
            return "redirect:/cart";
        }
        model.addAttribute("cart", cart);
        model.addAttribute("accounts", accountService.findAll());
        return "cart/cart-edit";
    }

    @PostMapping("/add")
    public String add(@ModelAttribute Cart cart) {
        try {
            cartService.save(cart);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/cart";
    }

    @PostMapping("/edit/{id}")
    public String edit(@PathVariable Integer id, @ModelAttribute Cart cart) {
        if (id == null) {
            return "redirect:/cart";
        }
        try {
            cartService.save(cart);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/cart";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable Integer id) {
        if (id == null) {
            return "redirect:/cart";
        }
        try {
            cartService.delete(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/cart";
    }
}