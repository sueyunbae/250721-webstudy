<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
		
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
let no=1;
$(function(){
	$('button').click(function(){
		$('div').text("Hello Jquery"+no)
		no++
	})
})
</script>
</head>
<body>
  <button>클릭</button>
  <div></div>
</body>
</html>