<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%int pages= (int)request.getAttribute("pages");
	for(int p=1; p<= pages; p++){
%>
<script type="text/javascript">
	$(function() {
$('#b<%=p%>').click(function() {
			$.ajax({
				url : "bookpage",
				data : {page : <%=p%>},
				success : function(x) {
					$('#result').html(x)
				}
			})
		})//b1
	})//start
	</script>
	<button id="b<%=p%>"><%=p %></button>
<%} %>