package com.example.asmjava5.controller;

import com.example.asmjava5.entity.Account;
import com.example.asmjava5.service.AccountService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired
    private AccountService accountService;

    @GetMapping
    public String list(Model model) {
        model.addAttribute("accounts", accountService.findAll());
        return "account/account";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("account", new Account());
        return "account/account-add";
    }

    @PostMapping("/add")
    public String add(@ModelAttribute Account account, BindingResult result) {
        if (result.hasErrors()) {
            return "account/account-add";
        }
        if (account.getIsAdmin() == null) {
            account.setIsAdmin((byte) 0);
        }
        if (account.getIsActive() == null) {
            account.setIsActive((byte) 0);
        }
        accountService.save(account);
        return "redirect:/account";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Integer id, Model model) {
        if (id == null) {
            return "error";
        }
        model.addAttribute("account", accountService.findById(id));
        return "account/account-edit";
    }

    @PostMapping("/edit/{id}")
    public String edit(@PathVariable Integer id, @Valid @ModelAttribute Account account, BindingResult result) {
        if (result.hasErrors()) {
            return "account/account-edit";
        }
        if (id == null) {
            return "error";
        }
        accountService.save(account);
        return "redirect:/account";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable Integer id) {
        if (id == null) {
            return "error";
        }
        accountService.delete(id);
        return "redirect:/account";
    }
}