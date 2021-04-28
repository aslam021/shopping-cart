package com.hsm.implementations;

import com.hsm.LoginService;
import com.hsm.data.AdminData;
import com.hsm.data.CustomerData;
import com.hsm.repositories.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class LoginServiceImp implements LoginService {

    @Autowired
    CustomerRepository customerRepository;

    @Override
    public Optional<CustomerData> getCustomer(String email, String password) {
        Optional<CustomerData> customerData = Optional.ofNullable(customerRepository.findByEmailAndPassword(email, password));
        return customerData;
    }
}
