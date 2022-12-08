package com.multi.mvc03;

import org.springframework.stereotype.Service;

@Service
public class PageService {

	public int pages(int count) {
		int pages =0;
		if(count %10 ==0) {
			pages = count / 10;
		}else {
			pages= count/10 +1;
		}
		return pages;
	}
}
