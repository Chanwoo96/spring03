package com.multi.mvc03;

import org.springframework.stereotype.Component;

@Component("cSite1")
public class CSite implements CSiteInterface{
	@Override
	public void orderView() {
		System.out.println("$주문정보보기$");
	}
	@Override
	public void confirm() {
		System.out.println("$확인하기$");
	}
}
