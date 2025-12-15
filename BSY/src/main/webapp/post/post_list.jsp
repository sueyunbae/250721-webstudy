<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap');

    body {
      font-family: 'Noto Sans KR', sans-serif;
      color: #333;
      background-color: #ffffff;
      margin: 0;
      padding: 40px 0;
    }

    .container {
      max-width: 900px;
      margin: 0 auto;
      padding: 0 20px;
    }

    h2 {
      font-weight: 700;
      margin-bottom: 10px;
      color: #222;
    }

    .breadcrumb {
      font-size: 13px;
      color: #999;
      margin-bottom: 20px;
      text-align: right;
    }

    .breadcrumb a {
      color: #999;
      text-decoration: none;
    }

    .breadcrumb a:hover {
      text-decoration: underline;
    }

    .search-box {
      float: right;
      margin-bottom: 15px;
    }

    .search-box select,
    .search-box input[type="text"] {
      padding: 5px 8px;
      font-size: 13px;
      border: 1px solid #ccc;
      border-radius: 4px;
      outline: none;
    }

    .search-box button {
      background: #ccc;
      border: none;
      padding: 5px 10px;
      border-radius: 4px;
      cursor: pointer;
      font-size: 14px;
      color: #333;
      transition: 0.2s;
    }

    .search-box button:hover {
      background: #999;
      color: #fff;
    }

    .clearfix::after {
      content: "";
      display: block;
      clear: both;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      font-size: 14px;
      background-color: #fff;
      border-radius: 6px;
      overflow: hidden;
      border: 1px solid #e0e0e0;
    }

    thead tr {
      background-color: #f5f5f5;
      text-align: center;
    }

    thead th {
      padding: 12px 10px;
      font-weight: 600;
      color: #555;
      border-bottom: 1px solid #ddd;
    }

    tbody td {
      padding: 12px 10px;
      border-bottom: 1px solid #eee;
      vertical-align: middle;
      color: #555;
    }

    tbody tr:hover {
      background-color: #fafafa;
    }

    tbody td.no {
      width: 5%;
      text-align: center;
      color: #aaa;
    }

    tbody td.title {
      width: 55%;
      font-weight: 500;
    }

    tbody td.title a {
      text-decoration: none;
      color: #333;
      transition: 0.2s;
    }

    tbody td.title a:hover {
      color: #666;
      text-decoration: underline;
    }

    tbody td.author,
    tbody td.date,
    tbody td.views {
      width: 13%;
      text-align: center;
      color: #777;
    }

    @media (max-width: 768px) {
      .search-box {
        float: none;
        text-align: center;
        margin-bottom: 15px;
      }
      table, thead, tbody, th, td, tr {
        display: block;
      }
      thead tr {
        display: none;
      }
      tbody td {
        text-align: right;
        padding-left: 50%;
        position: relative;
      }
      tbody td::before {
        content: attr(data-label);
        position: absolute;
        left: 10px;
        width: calc(50% - 20px);
        font-weight: 600;
        text-align: left;
        color: #555;
      }
    }

    .pagination {
      text-align: center;
      margin: 20px 0;
      clear: both;
    }

    .pagination button {
      background-color: #fff;
      border: 1px solid #ccc;
      color: #333;
      padding: 6px 12px;
      margin: 0 3px;
      border-radius: 4px;
      cursor: pointer;
      font-size: 14px;
      transition: 0.2s;
    }

    .pagination button:hover:not(.active) {
      background-color: #f0f0f0;
    }

    .pagination button.active {
      background-color: #333;
      color: #fff;
      border-color: #333;
      cursor: default;
    }

    .pagination button:disabled {
      background-color: #eee;
      color: #aaa;
      border-color: #ddd;
      cursor: default;
    }
  </style>
</head>
<body>
<div class="container">
<h2>공지사항</h2>

<form action="postList" method="get" class="search-box clearfix">
    <select name="searchCategory">
        <option value="POSTTITLE" ${searchCategory=='POSTTITLE'?'selected':''}>제목</option>
        <option value="POSTER" ${searchCategory=='POSTER'?'selected':''}>작성자</option>
    </select>
    <input type="text" name="searchWord" value="${searchWord != null ? searchWord : ''}" placeholder="검색어를 입력하세요" />
    <button type="submit">검색</button>
</form>

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
<c:forEach var="post" items="${list}">
<tr>
    <td class="id">${post.postId}</td>
    <td class="title"><a href="postDetail?postId=${post.postId}">${post.postTitle}</a></td>
    <td class="poster">${post.poster}</td>
    <td class="date">${post.dbday}</td>
    <td class="views">${post.postView}</td>
</tr>
</c:forEach>
</tbody>
</table>

<div class="pagination">
<c:forEach var="i" begin="1" end="${(totalCount/pageSize) + (totalCount % pageSize > 0 ? 1 : 0)}">
    <a href="postList?page=${i}&searchCategory=${searchCategory}&searchWord=${searchWord}" 
       class="${currentPage == i ? 'active' : ''}">${i}</a>
</c:forEach>
</div>

</div>
</body>
</html>
