package com.hsm;

import com.hsm.data.CustomerData;

import java.util.Optional;

public interface LoginService {
    Optional<CustomerData> getCustomer(String email, String password);
}
