package com.hsm;

import com.hsm.data.AdminData;

import java.util.Optional;

public interface AdminLoginService {
    Optional<AdminData> getAdmin(String email, String password);
}
