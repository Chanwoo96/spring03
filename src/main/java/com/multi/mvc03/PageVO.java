package com.multi.mvc03;

public class PageVO {
private int start;
private int end;
private int page;
//페이지에 따라 불러 올 범위 자동 조절
public void setStartEnd(int page) {
	start=1+(page-1)*10;
	end= page*10;
	
	//page --> start ~ end
	// 1page   1    ~   5
	// 2page   6    ~   10
	// 3page   11    ~   15
	// 					page*5
}
public int getStart() {
	return start;
}
public void setStart(int start) {
	this.start = start;
}
public int getEnd() {
	return end;
}
public void setEnd(int end) {
	this.end = end;
}
public int getPage() {
	return page;
}
public void setPage(int page) {
	this.page = page;
}
@Override
public String toString() {
	return "PageVO [start=" + start + ", end=" + end + ", page=" + page + "]";
}

}
