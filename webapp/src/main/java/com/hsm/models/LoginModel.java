package com.hsm.models;

import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class LoginModel {
    private String email;
    private String password;
}
