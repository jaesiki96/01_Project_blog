package com.its.blog.repository;

import com.its.blog.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

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

    //회원가입 처리
    public int save(MemberDTO memberDTO) {
        return sql.insert("Member.save", memberDTO);
    }

    //이메일 중복체크 (회원가입)
    public int idCheck(String memberId) {
        return sql.selectOne("Member.idCheck", memberId);
    }

    //회원관리 처리 (관리자용)
    public List<MemberDTO> findAll() {
        return sql.selectList("Member.findAll");
    }

    //회원정보 페이지 출력
    public MemberDTO findById(Long id) {
        return sql.selectOne("Member.findById", id);
    }

    //회원삭제 (관리자용)
    public void delete(Long id) {
        sql.delete("Member.delete", id);
    }
}
