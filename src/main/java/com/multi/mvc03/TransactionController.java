package com.multi.mvc03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TransactionController {
	@Autowired
	TransactionService service;

	@RequestMapping("transaction.do")
	public void transaction(MemberVO vo, BbsVO vo2, Model model) {
		// 트랜잭션(처리의 단위, 회원가입 --> 게시판 글쓰기) 처리할 수 있는 기능의 메서드 필요
		int result = 0;
		try {
			result = service.tran(vo, vo2);
			System.out.println("-------------------1-" + result);
		} catch (Exception e) {
		}

		System.out.println("--------------------2" + result);
		if (result == 0) {
			model.addAttribute("result", "실패!! 롤백됨..!! 둘다 취소!!");
		} else {
			model.addAttribute("result", "성공!! 커밋됨..!! 둘다 저장!!");

		}
	}
}



