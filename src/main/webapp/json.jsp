<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//{"id":"root","pw":"1234","name":"홍길동"}
JSONObject json = new JSONObject(); // HashMap(키:값) --> put(키:값)
json.put("id", "root");
json.put("pw", "1234");
json.put("name", "홍길동");
//PrintWriter out= new PrintWriter();
out.print(json.toJSONString());
%>
