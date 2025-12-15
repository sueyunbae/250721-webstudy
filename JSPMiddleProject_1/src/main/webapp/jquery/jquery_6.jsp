<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	let position=parseInt($('#qmenu').css('top'));
	$(window).scroll(function(){
		let pos=$(window).scrollTop()
		$('#qmenu').stop().animate({"top":pos+position+"px"},1000)
	})
	$('#sendMsg').keydown(function(key){
		if(key.keyCode===13) // 13번이 enter
		{
			let msg=$('#sendMsg').val()
			if(msg.trim()==="")
			{
				$('#sendMsg').focus()
				return
			}
			$('#recvMsg').append(msg+"<br>")
			$('#sendMsg').val("")
			$('#sendMsg').focus()
			
			//스크롤바
			let ch=$('#chatArea').height()
			let m=$('#recvMsg').height()-ch
			$('#chatArea').scrollTop(m)
		}
	})
})
</script>
<style type="text/css">
#chatArea{
	width: 200px;
	height: 200px;
	overflow-y:auto;
	border:1px solid black;
}
#wrap{
	text-align:left;
	margin: 0px auto;
	width: 600px
}
#qmenu{
	background: #CCCCCC;
	position:absolute;
	width: 200px;
	top: 100px;
	right: 10px
}
</style>
</head>
<body>
  <div id="wrap">
    <pre>
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    새롭게 추가된 세트리스트와 밴드 라이브는 공연을 더욱 풍성하게 만들었다. 
    투어명과 동명의 곡 워크 더 라인 포문을 연 엔하이픈은 강렬한 분위기의 퓨처 
    퍼펙트(Future Perfect)와 블레스드 커스드(Blessed-Cursed)로 이어지는 오프닝 구간으로 분위기를 달궜다. 
    </pre>
  </div>
  <div id="qmenu">
    <ul style="list-style: none">
      <li>홈</li>
      <li>영화</li>
      <li>뮤직</li>
      <li>뉴스</li>
      <li>커뮤니티</li>
    </ul>
  </div>
  <table class="table">
  <tr>
    <td>
      <div id="chatArea">
        <div id="recvMsg"></div>
      </div>
    </td>
  </tr>
  <tr>
    <td>
      <input type=text size=22 id="sendMsg">
    </td>
  </tr>
  </table>
</body>
</html>