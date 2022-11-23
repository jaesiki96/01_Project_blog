package com.its.blog.service;

import com.its.blog.dto.MemberDTO;
import com.its.blog.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;

    //로그인 처리
    public boolean login(MemberDTO memberDTO) {
        MemberDTO loginResult = memberRepository.login(memberDTO);
        if (loginResult != null) {
            return true;
        } else {
            return false;
        }
    }

    //회원가입 처리
    public boolean save(MemberDTO memberDTO) {
        int saveResult = memberRepository.save(memberDTO);
        if (saveResult > 0) {
            return true;
        } else {
            return false;
        }
    }

    //회원관리 처리 (관리자용)
    public List<MemberDTO> findAll() {
        return memberRepository.findAll();
    }

    //회원정보 페이지 출력
    public MemberDTO findById(Long id) {
        return memberRepository.findById(id);
    }
}
