package com.multi.mvc03;

public class Bbs3VO {
private int row_no;
private int id;
private String title;
private String content;
private String writer;
@Override
public String toString() {
	return "Bbs3VO [bbs_no=" + row_no + ", id=" + id + ", title=" + title + ", content=" + content + ", writer="
			+ writer + "]";
}
public int getRow_no() {
	return row_no;
}
public void setRow_no(int bbs_no) {
	this.row_no = bbs_no;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getWriter() {
	return writer;
}
public void setWriter(String writer) {
	this.writer = writer;
}
}
