package com.multi.mvc03;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Bbs3Controller {
	@Autowired
	Bbs3DAO dao;
	
	@Autowired
	PageService page;
	
	@RequestMapping("bbsList")
	public void list(Model model) {
		System.out.println();
		List<Bbs3VO> list= dao.list();
		model.addAttribute("list", list);
		
	}
	@RequestMapping("bbsList2")
	public void list2(Model model,PageVO vo) {
		System.out.println(vo);
		vo.setStartEnd(vo.getPage());
		System.out.println(vo);
		List<Bbs3VO> list= dao.list2(vo);
		model.addAttribute("list", list);
	}
	@RequestMapping("bbsAll")
	public void list3(Model model,PageVO vo) {
		System.out.println(vo);
		vo.setStartEnd(vo.getPage());
		System.out.println(vo);
		List<Bbs3VO> list= dao.all(vo);
		int count =dao.count();
		int pages= count/10+1;
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("pages", pages);
		
	}
	@RequestMapping("bbsAll2")
	public void all3(Model model,PageVO vo) {
		System.out.println(vo);
		vo.setStartEnd(vo.getPage());
		System.out.println(vo);
		List<Bbs3VO> list= dao.all(vo);
		int count =dao.count();
//		
		int pages =page.pages(count);
//		if(count%10==0) {
//			pages= count/10;
//			
//		}else {
//			
//		pages= count/10+1;
//		}
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("pages", pages);
		
	}
}
