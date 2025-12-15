<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
let title='${vo.title}'
let movie=[];
</script>
<style type="text/css">
.row {
  margin: 0px auto;
  width:960px;
}
p {
   overflow: hidden;
   white-space: nowrap;
   text-overflow: ellipsis;
}
</style>
</head>
<body>
  <div class="cotainer">
   <div class="row print">
    <div class="row">
     <table class="table">
      <tr>
        <td width=40% class="text-center" rowspan="4">
         <table class="table">
          <tr>
           <td colspan=7>
             <img src="${vo.poster }" style="width: 420px;height: 300px"
              id="mainImg"
             >
           </td>
          </tr>
         </table>
        </td>
        <td colspan="2">
          <h3>${vo.title }&nbsp;</h3>
        </td>
      </tr>
      <tr>
       <td width=10% style="color:gray">순위</td>
       <td width=50%>${vo.rank }</td>
      </tr>
      <tr>
       <td width=10% style="color:gray">가수</td>
       <td width=50%>${vo.singer }</td>
      </tr>
      <tr>
       <td width=10% style="color:gray">앨범</td>
       <td width=50%>${vo.album }</td>
      </tr>
     </table>
     <table class="table">
      <tr>
        <td class="text-right">
         <a href="#" class="btn btn-xs btn-danger">좋아요</a>
         <a href="#" class="btn btn-xs btn-warning">찜하기</a>
         <a href="javascript:history.back()" class="btn btn-xs btn-success">목록</a>
        </td>
      </tr>
     </table>
    </div>
   </div>
  </div>
</body>
</html>