<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function() {
	  $('img').hover(
	    function() { // 마우스 올렸을 때
	      //$(this).css('opacity', 0.3).css('cursor', 'pointer');
	    $(this).css({"opacity":0.3,"cursor":"pointer","border":"2px solid red"})
	    },
	    function() { // 마우스 뗐을 때
	      $(this).css('opacity', 1.0).css('cursor', 'none').css("border","none");
	    })
	    
	    $('li').on('click',function(){
	    	let data=$(this).text()
	    	alert("선택된 과정:"+data)
	    	// 값을 변경
	    	$(this).text(data+"과정")
	    })
	    
	    $('#image').click(function(){
	    	let file=$('#image').attr("src")
	    	alert(file)
	    	// 값 변경
	    	$('#image').attr("src","mm3.jpg")
	    })
	    
	    $('#readBtn').click(function(){
	    	let name=$('input[type=text]').val()
	    	alert(name)
	    })
	    $('#writeBtn').click(function(){
	    	let name=$('input[type=text]').val("심청이")
	    })
	    
	    $('h1').click(function(){
	    	//let text=$('h1').text()
	    	//alert(text)
	    	//let html=$('h1').html()
	    	//alert(html)
	    	$('h1').html('<font color=red>Hello Jquery</font>')
	    })
	    $('#appBtn').click(function(){
	    	$('div').append(
	    	  '<h1>Hello Append</h1>'		
	    	)
	    })
})
</script>
</head>
<%--
	val() => input / textarea / select
	text() => 모든 태그 / 읽기 / 쓰기
	html() => 읽기 / 쓰기
	append() => 여러개 태그 추가
	attr() => 속성 값 읽기
	prop() => checkbox / radio
 --%>
<body>
  <img src="mm1.jpg" style="width:150px;height: 200px">
  <img src="mm2.jpg" style="width:150px;height: 200px">
  <img src="mm3.jpg" style="width:150px;height: 200px">
  <p>
  <ul>
    <li>Java</li>
    <li>Oracle</li>
    <li>JSP</li>
    <li>Spring</li>
    <li>Spring-Boot</li>
    <li>HTML/CSS/JavaScript</li>
    <li>Jquery(Ajax)</li>
    <li>VueJS</li>
    <li>ReactJS</li>
    <li>CI/CD(운영)</li>
    <li>DevOps</li>
  </ul>
  <p>
  <img src="mm2.jpg" id="image" style="width: 200px;height: 250px">
  <p>
    <input type=text id="name" size=20>
    <input type=button value="읽기" id="readBtn">
    <input type=button value="쓰기" id="writeBtn">
  <p>
    <h1><span>Hello Jquery</span></h1>
  <p>
    <input type=button value="저장" id="appBtn">
    <div>
    </div>  
</body>
</html>