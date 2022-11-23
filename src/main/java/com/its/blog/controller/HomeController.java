package com.its.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class HomeController {
    @GetMapping("/")
    public String home() {
        return "loginHome";
    }

    //블로그 페이지 출력
    @GetMapping("/myBlog")
    public String myBlog() {
        return "myBlog";
    }

    //로그아웃 처리
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "loginHome";
    }
}
