package com.multi.mvc03;

import java.io.File;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class MovieController {
	@Autowired
	MovieDAO dao;
	@RequestMapping("movie")
	public void movie(MovieVO2 vo,Model model) {
		model.addAttribute("vo", vo);
	}
	@RequestMapping("uploadForm") //value="" method=""받는 방식설정가능
	public void name(
			//파일을 받을 실제 위치 찾기
			HttpServletRequest request,
			//파일 받는 역할 프로토타입으로 사용
			MultipartFile file,
			Model model) throws Exception {
		String savedName=file.getOriginalFilename();
		String uploadPath = request.getSession().getServletContext().getRealPath("resources/upload");
		File target = new File(uploadPath + "/" +savedName);
		file.transferTo(target);
		model.addAttribute("savedName", savedName);
	}
	@RequestMapping("insert2")
	public void insert(
					MovieVO movieVO,
					HttpServletRequest request, 
					MultipartFile file, 
					Model model) throws Exception {
		String savedName = file.getOriginalFilename();
		String uploadPath = request.getSession().getServletContext().getRealPath("resources/upload");
		File target = new File(uploadPath + "/" + savedName);
		file.transferTo(target);
		model.addAttribute("savedName", savedName);
		System.out.println(movieVO);
		movieVO.setImg(savedName);
		System.out.println(movieVO);
		dao.insert(movieVO);
		//컨트롤러의 vo변수명을 맨앞글자만 소문자로 바꾸어서 변수를 만들면,
		//자동으로 모델의 속성으로 등록시켜줌.
		//model.addAttribute("movieVO",movieVO) 생략가능
	}

}
