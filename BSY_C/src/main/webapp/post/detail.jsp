<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/table.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>

</head>
<body>

    <!-- ****** Archive Area Start ****** -->
    <section class="archive-area section_padding_80">
        <div class="container">
            <div class="row board_row">
             <table class="table">
              <tr>
               <th width=20% class="text-center">번호</th>
               <td width=30% class="text-center">${vo.postId }</td>
               <th width=20% class="text-center">작성일</th>
               <td width=30% class="text-center">${vo.dbday }</td>
              </tr>
              <tr>
               <th width=20% class="text-center">이름</th>
               <td width=30% class="text-center">${vo.poster }</td>
               <th width=20% class="text-center">조회수</th>
               <td width=30% class="text-center">${vo.postView }</td>
              </tr>
              <tr>
               <th width=20% class="text-center">제목</th>
               <td colspan="3">${vo.postSubject }</td>
              </tr>
              <tr>
                <td colspan="4" valign="top" height="200">
                 <pre style="white-space: pre-wrap;border:none;background-color: white;">${vo.postContent }</pre>
                </td>
              </tr>
             </table>
            </div>         
         </div> 
         </div>   
        </div>
    </section>
</body>
</html>