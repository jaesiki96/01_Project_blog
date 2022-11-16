package com.its.blog.repository;

import com.its.blog.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;

    //로그인 처리(아이디,비밀번호)
    public MemberDTO login(String memberId, String memberPassword) {
        MemberDTO memberDTO = new MemberDTO();
        memberDTO.setMemberId(memberId);
        memberDTO.setMemberPassword(memberPassword);
        return sql.selectOne("Member.login", memberDTO);
    }

    //로그인 처리
    public MemberDTO login(MemberDTO memberDTO) {
        return sql.selectOne("Member.login", memberDTO);
    }

    //회원가입처리
    public int save(MemberDTO memberDTO) {
        return sql.insert("Member.save", memberDTO);
    }
}
