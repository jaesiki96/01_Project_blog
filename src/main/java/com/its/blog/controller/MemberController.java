package com.its.blog.controller;

import com.its.blog.dto.MemberDTO;
import com.its.blog.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

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
            return "index";
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
            return "index";
        }
    }

    //이메일 중복체크 (회원가입)
    @PostMapping("/idCheck")
    public @ResponseBody int idCheck(@RequestParam("inputId") String memberId) {
        int result = memberService.idCheck(memberId);
        return result;
    }

    //회원관리 페이지 출력 (관리자용)
    @GetMapping("/members")
    public String findAll(Model model) {
        List<MemberDTO> memberList = memberService.findAll();
        model.addAttribute("memberList", memberList);
        return "memberPages/memberList";
    }

    //회원정보 페이지 출력
    @GetMapping
    public String findById(@RequestParam("id") Long id, Model model) {
        MemberDTO memberDTO = memberService.findById(id);
        model.addAttribute("member", memberDTO);
        return "memberPages/memberDetail";
    }

    //회원삭제 (관리자용)
    @GetMapping("/delete")
    public String delete(@RequestParam("id") Long id) {
        memberService.delete(id);
        return "redirect:/member/members";
    }
}
