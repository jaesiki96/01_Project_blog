package com.its.blog.controller;

import com.its.blog.dto.MemberDTO;
import com.its.blog.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/member")
public class MemberController {
    @Autowired
    private MemberService memberService;

    //로그인 페이지 출력
    @GetMapping("/login")
    public String loginForm() {
        return "/memberPages/memberLogin";
    }

    //로그인 처리
    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session, Model model) {
        boolean loginResult = memberService.login(memberDTO);
        session.setAttribute("loginId", memberDTO.getMemberId());
        model.addAttribute("modelId", memberDTO.getMemberId());
        if (loginResult) {
            return "loginHome";
        } else {
            return "/memberPages/memberLogin";
        }
    }

    //회원가입 페이지 출력
    @GetMapping("/save")
    public String saveForm() {
        return "/memberPages/memberSave";
    }

    //회원가입 처리
    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO) {
        boolean saveResult = memberService.save(memberDTO);
        if (saveResult) {
            return "/memberPages/memberLogin";
        } else {
            return "logoutHome";
        }
    }

}
