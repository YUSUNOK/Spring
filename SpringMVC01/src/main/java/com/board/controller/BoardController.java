package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.board.entity.Board;
import kr.board.mapper.BoardMapper;

@Controller
public class BoardController {
	@Autowired
	private BoardMapper mapper;
	
	
	
	@RequestMapping("/boardList.do")
	public void boardList(Model model) {
		List<Board> list=mapper.boardList();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("/boardInsertForm.do")
	public void boardInsertForm() {
		
	}
	
	
	@RequestMapping("/boardInsert.do")
	public String boardInsert(Board board) {
		mapper.boardInsert(board);
		return "redirect:/boardList.do";
	}
	
	@RequestMapping("/boardContent.do")
	public String boardContent(int idx, Model model) {
		Board vo=mapper.boardContent(idx);
		model.addAttribute("vo", vo);
		
		return "boardContent";
	}
	
	@RequestMapping("/boardUpdateForm.do")
	public String boardUpdateForm(int idx, Model model) {
		Board vo=mapper.boardContent(idx);
		model.addAttribute("vo", vo);
		return "boardUpdateForm";
	}
	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(Board board, Model model) {
		mapper.boardUpdate(board);
		
		return "redirect:/boardList.do";
	}
	
	
	

}
