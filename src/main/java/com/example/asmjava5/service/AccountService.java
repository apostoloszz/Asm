package com.example.asmjava5.service;

import com.example.asmjava5.entity.Account;

import java.util.List;


public interface AccountService {

    List<Account> findAll();

    Account findById(Integer id);

    void save(Account account);

    void delete(Integer id);
}