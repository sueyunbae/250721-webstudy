<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <title>공지사항</title>

    <!-- 외부 CSS 파일 연결 -->
    <link rel="stylesheet" href="css/notice.css">
</head>

<body>
  <div class="container">
    <h2>공지사항</h2>

    <div class="breadcrumb">
      홈 &gt; 공지사항
    </div>

    <div class="search-box clearfix">
      <select name="searchCategory" id="searchCategory">
        <option value="title">제목</option>
        <option value="author">작성자</option>
      </select>
      <input type="text" placeholder="검색어를 입력하세요" />
      <button type="submit" aria-label="검색">검색</button>
    </div>

    <table>
      <thead>
        <tr>
          <th>No</th>
          <th>제목</th>
          <th>작성자</th>
          <th>등록일</th>
          <th>조회수</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="no" data-label="No">1</td>
          <td class="title" data-label="제목"><a href="#">펜션 오픈 기념 할인 이벤트</a></td>
          <td class="author" data-label="작성자">최고관리자</td>
          <td class="date" data-label="등록일">2018-11-08</td>
          <td class="views" data-label="조회수">134</td>
        </tr>
        <tr>
          <td class="no" data-label="No">2</td>
          <td class="title" data-label="제목"><a href="#">펜션 오픈 기념 할인 이벤트</a></td>
          <td class="author" data-label="작성자">최고관리자</td>
          <td class="date" data-label="등록일">2018-11-08</td>
          <td class="views" data-label="조회수">134</td>
        </tr>
      </tbody>
    </table>

    <!-- 페이지네이션 -->
    <div class="pagination">
      <button class="prev" disabled>이전</button>
      <button class="page active">1</button>
      <button class="page">2</button>
      <button class="page">3</button>
      <button class="page">4</button>
      <button class="page">5</button>
      <button class="next">다음</button>
    </div>

  </div>
</body>
</html>
