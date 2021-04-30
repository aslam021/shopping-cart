package com.hsm.implementations;

import com.hsm.AdminLoginService;
import com.hsm.data.AdminData;
import com.hsm.repositories.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class AdminLoginServiceImp implements AdminLoginService {

    @Autowired
    AdminRepository adminRepository;

    @Override
    public Optional<AdminData> getAdmin(String email, String password) {
        Optional<AdminData> admin = Optional.ofNullable(adminRepository.findByEmailAndPassword(email, password));
        return admin;
    }
}
