package com.hsm;


import com.hsm.data.AdminData;
import com.hsm.repositories.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/admin")
public class AdminRepo  {

    @Autowired
    private AdminRepository adminRepository;

    @GetMapping
    public List<AdminData> findAllAdmins(){
        return (List<AdminData>) adminRepository.findAll();
    }

    @GetMapping("/hello")
    public String hello(){
        return "hello";
    }

    @GetMapping("/{id}")
    public ResponseEntity<AdminData> findUserById(@PathVariable(value = "id") long id) {
        Optional<AdminData> admin = adminRepository.findById(id);

        if(admin.isPresent()) {
            return ResponseEntity.ok().body(admin.get());
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping
    public AdminData saveUser(@Validated @RequestBody AdminData adminData) {
        return adminRepository.save(adminData);
    }
}
