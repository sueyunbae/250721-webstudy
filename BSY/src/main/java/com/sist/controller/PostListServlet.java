package com.sist.controller;

import java.io.IOException;
import java.util.List;

import com.sist.dao.PostDAO;
import com.sist.vo.PostVO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class PostListServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 한글 처리
        request.setCharacterEncoding("UTF-8");

        // 1. 현재 페이지 번호
        String pageParam = request.getParameter("page");
        int page = (pageParam == null) ? 1 : Integer.parseInt(pageParam);

        int rowSize = 10;
        int start = (page - 1) * rowSize;

        // 2. DAO 호출
        List<PostVO> list = PostDAO.postListData(start);
        int totalCount = PostDAO.postTotalPage();

        // 3. JSP에 전달할 데이터
        request.setAttribute("list", list);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalCount", totalCount);
        request.setAttribute("pageSize", rowSize);

        // 4. 페이지 이동
        RequestDispatcher rd = request.getRequestDispatcher("/postList.jsp");
        rd.forward(request, response);
    }
}
