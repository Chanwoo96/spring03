package com.multi.mvc03;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ListController {

	@RequestMapping("tour")
	public void tour() {}
	@RequestMapping("fruit")
	public void fruit() {}
	
}
