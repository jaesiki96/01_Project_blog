package com.its.blog.controller;

import com.its.blog.dto.BoardDTO;
import com.its.blog.dto.CommentDTO;
import com.its.blog.dto.PageDTO;
import com.its.blog.service.BoardService;
import com.its.blog.service.CommentService;
import com.its.blog.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/board")
public class BoardController {
    @Autowired
    private BoardService boardService;
    @Autowired // findById 에서 CommentService 호출 (댓글 기능)
    private CommentService commentService;

    // 글 작성 페이지 출력
    @GetMapping("/save")
    public String saveForm() {
        return "boardPages/boardSave";
    }

    // 글 작성 & 파일 첨부
    @PostMapping("/save")
    public String save(@ModelAttribute BoardDTO boardDTO) throws IOException {
        boardService.save(boardDTO);
        return "redirect:/board/";
    }

    // 글 목록 출력
    @GetMapping("/")
    public String findAll(Model model) {
        List<BoardDTO> boardDTOList = boardService.findAll();
        model.addAttribute("boardList", boardDTOList);
        return "boardPages/boardList";
    }

    // 페이징 목록
    @GetMapping("/paging")
    public String paging(Model model,
                         @RequestParam(value = "page", required = false, defaultValue = "1") int page) {
        // value = 받으려는 파라미터 이름, required = 필수 여부 (true/false), defaultValue = "기본으로 1 페이지를 주겠다"
//        System.out.println("page = " + page);
        // 해당 페이지에서 보여줄 글 목록
        List<BoardDTO> pagingList = boardService.pagingList(page);
        // 하단 페이지 번호 표현을 위한 데이터
        PageDTO pageDTO = boardService.pagingParam(page);
        model.addAttribute("boardList", pagingList);
        model.addAttribute("paging", pageDTO);
        return "boardPages/boardPaging";
    }

    // 상세조회 -- 위에 RequestMapping 했기 때문에 GetMapping 만 사용
    @GetMapping
    public String findById(@RequestParam("id") Long id, Model model,
                           @RequestParam(value = "page", required = false, defaultValue = "1") int page) {
        boardService.updateHits(id);
        BoardDTO boardDTO = boardService.findById(id);
        model.addAttribute("board", boardDTO);
        model.addAttribute("page", page);
        System.out.println("조회: boardDTO = " + boardDTO);
        List<CommentDTO> commentDTOList = commentService.findAll(id); // 댓글 기능 추가
        model.addAttribute("commentList", commentDTOList);
        return "boardPages/boardDetail";
    }

    // 수정화면 요청
    @GetMapping("/update")
    public String updateForm(@RequestParam("id") Long id, Model model) {
        // id 를 가지고 조회할 수 있는 메서드가 이미 위에 있기 때문에 findById 를 가져온다.
        BoardDTO boardDTO = boardService.findById(id);
        model.addAttribute("board", boardDTO);
        return "boardPages/boardUpdate";
    }

    // 수정 처리
    @PostMapping("/update")
    public String update(@ModelAttribute BoardDTO boardDTO, Model model) {
        boardService.update(boardDTO);
        // 수정 처리 후 상세페이지 출력
        // 1. redirect 로 상세페이지 요청 (조회수가 하나 더 올라가는 오류가 있음)
//        return "redirect:/board?id=" + boardDTO.getId();
        // 2. DB 에서 가져와서 boardDetail 출력
        BoardDTO dto = boardService.findById(boardDTO.getId());
        model.addAttribute("board", dto);
        return "boardPages/boardDetail";
    }

    // 삭제 처리
    @GetMapping("/delete")
    public String delete(@RequestParam("id") Long id) {
        boardService.delete(id);
        return "redirect:/board/";
    }

    // 검색 처리
    @GetMapping("/search")
    public String search(@RequestParam("type") String type,
                         @RequestParam("q") String q, Model model) {
        List<BoardDTO> searchList = boardService.search(type, q);
        model.addAttribute("boardList", searchList);
        return "boardPages/boardList";
    }
}
