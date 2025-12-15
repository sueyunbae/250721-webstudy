<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<section class="notice-form-wrap">
  <h2 class="form-title">공지 등록</h2>

  <form class="notice-form">
    <!-- 공지 종류 -->
    <div class="form-row">
      <label class="label">공지 종류</label>
      <select name="type" class="input">
        <option value="normal">공지사항</option>
        <option value="event">이벤트</option>
      </select>
    </div>

    <!-- 제목 -->
    <div class="form-row">
      <label class="label">${vo.postTitle}</label>
      <input type="text" name="title" class="input" required>
    </div>

    <!-- 내용 -->
    <div class="form-row">
      <label class="label">${vo.postContent}</label>
      <textarea name="content" class="textarea" rows="8" required></textarea>
    </div>

    <!-- 첨부파일 -->
    <div class="form-row">
      <label class="label">${vo.postImage}</label>
      <input type="file" name="file" class="input file-input">
    </div>

    <!-- 버튼 -->
    <div class="form-actions">
      <button type="submit" class="btn primary">등록</button>
      <button type="reset" class="btn">초기화</button>
    </div>
  </form>
</section>

</body>
</html>