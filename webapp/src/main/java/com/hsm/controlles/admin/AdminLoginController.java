package com.hsm.controlles.admin;

import com.hsm.AdminLoginService;
import com.hsm.SpringBootWebApplication;
import com.hsm.data.AdminData;
import com.hsm.models.LoginModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Optional;

@Controller
@RequestMapping("admin/login")
public class AdminLoginController {

    @Autowired
    AdminLoginService adminLoginService;

    @GetMapping
    public String getLoginPage(Model model){
        LoginModel loginModel = new LoginModel();
        model.addAttribute(loginModel);
        return "/admin/login.jsp";
    }

    @PostMapping
    public void processLoginInfo(@ModelAttribute("loginModel") LoginModel loginModel,
                                 Model model, HttpServletResponse response){
        Optional<AdminData> admin = adminLoginService.getAdmin(loginModel.getEmail(),
                loginModel.getPassword());

        if (admin.isPresent()){
            SpringBootWebApplication.loggedInAdmin = admin.get();

            try {
                response.sendRedirect("products");
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            try {
                response.sendRedirect("login");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }
}
