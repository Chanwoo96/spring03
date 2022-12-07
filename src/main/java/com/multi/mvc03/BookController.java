package com.multi.mvc03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookController {
	
	@Autowired
	BookDAO dao;
	
	@RequestMapping("insert.do")
	public void insert(BookVO vo) {
		dao.insert(vo);
	}
	
	@RequestMapping("up2")
	public void update(BookVO vo) {
		dao.update(vo);
	}
	@RequestMapping("delete2")
	public void delete(BookVO vo) {
		dao.delete(vo);
	}
	@RequestMapping("one2")
	public void one(BookVO vo , Model model) {
	model.addAttribute("dto", dao.one(vo));
	}
	@RequestMapping("all2")
	public void all( Model model) {
	model.addAttribute("list", dao.all());
	}
}
