package com.hsm.controlles;

import com.hsm.LoginService;
import com.hsm.SpringBootWebApplication;
import com.hsm.data.CustomerData;
import com.hsm.models.LoginModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Optional;

@ControllerAdvice
@RequestMapping("/login")
public class LoginController {

    @Autowired
    LoginService loginService;

    @GetMapping
    public String displayLogin(Model model){
        LoginModel loginModel = new LoginModel();
        model.addAttribute(loginModel);
        return "login.jsp";
    }

    @PostMapping
    public void processLogin(@ModelAttribute("loginModel") LoginModel loginModel, Model model, HttpServletResponse response){
        Optional<CustomerData> user = loginService.getCustomer(loginModel.getEmail(), loginModel.getPassword());

        if (user.isPresent()){
            SpringBootWebApplication.loggedInUser = user.get();
        }

        try {
            response.sendRedirect("products");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
