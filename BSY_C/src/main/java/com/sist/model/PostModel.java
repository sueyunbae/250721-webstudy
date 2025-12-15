package com.sist.model;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.PostDAO;
import com.sist.vo.PostVO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
/*
 *    header.jsp => link
 *    mapper.xml => SQL
 *    DAO => 처리 
 *    Model => 브라우저 전송 
 *    해당 JSP에서 화면 출력 
 *                    DispatcherServlet(서블릿)
 *                            |
 *                    ------------------
 *                    |                |
 *    BoardDAO   BoardModel  ======> JSP출력 
 *      |            |
 *    오라클          브라우저 
 *      |            |
 *      --------------
 *            |
 *         BoardVO : 게시물 한개에 대한 정보 
 */
@Controller
public class PostModel {
   @RequestMapping("post/list.do")
   public String post_list(HttpServletRequest request,
		   HttpServletResponse response)
   {
	   // 사용자가 페이지 요청 
	   String page=request.getParameter("page");
	   if(page==null)
		   page="1";
	   int curpage=Integer.parseInt(page);
	   int rowSize=10;
	   int start=(curpage-1)*rowSize;
	   List<PostVO> list=PostDAO.postListData(start);
	   int count=PostDAO.postTotalPage();
	   int totalpage=(int)(Math.ceil(count/10.0));
	   count=count-(((curpage-1)*rowSize));
	   request.setAttribute("count", count);
	   request.setAttribute("today", 
			  new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
	   request.setAttribute("curpage", curpage);
	   request.setAttribute("totalpage", totalpage);
	   request.setAttribute("list", list);
	   
	   request.setAttribute("main_jsp", "../post/list.jsp");
	   return "../main/main.jsp";
   }
   @RequestMapping("post/insert.do")
   public String post_insert(HttpServletRequest request,
		   HttpServletResponse response)
   {
	   request.setAttribute("main_jsp", "../post/insert.jsp");
	   return "../main/main.jsp";
   }
   /*
    *   https://www.google.com/search?q=%EC%9E%90%EB%B0%94&oq=%EC%9E%90%EB%B0%94&gs_lcrp=EgZjaHJvbWUyDAgAEEUYORixAxiABDINCAEQABiDARixAxiABDINCAIQABiDARixAxiABDINCAMQABiDARixAxiABDIHCAQQABiABDIKCAUQABixAxiABDIHCAYQABiABDIHCAcQABiABDIHCAgQABiABDIHCAkQABiABNIBCTIxOTRqMGoxNagCAbACAQ&sourceid=chrome&ie=UTF-8
    */
   @RequestMapping("post/insert_ok.do")
   public String post_insert_ok(HttpServletRequest request,
		   HttpServletResponse response)
   {
	   // %EC%9E%90%EB%B0%94
	   // 자바
	   try
	   {
		   request.setCharacterEncoding("UTF-8");
	   }catch(Exception ex) {}
	   
	   String poster=request.getParameter("poster");
	   String postTitle=request.getParameter("postTitle");
	   String postContent=request.getParameter("postContent");
	   String pwd=request.getParameter("pwd");
	   
	   PostVO vo=new PostVO();
	   vo.setPoster(poster);
	   vo.setPostTitle(postTitle);
	   vo.setPostContent(postContent);
	   
	   // DAO연동 
	   PostDAO.postInsert(vo);
	   return "redirect:../post/list.do";
   }
   @RequestMapping("post/detail.do")
   public String post_detail(HttpServletRequest request,
		   HttpServletResponse response)
   {
	   String no=request.getParameter("no");
	   String page=request.getParameter("page");
	   String type=request.getParameter("type");
	   if(type==null)
		   type="0";
	   PostVO vo=
		 PostDAO.postDetailData(Integer.parseInt(no),
				 Integer.parseInt(type));
	   
	   request.setAttribute("vo", vo);
	   request.setAttribute("page", page);
	   request.setAttribute("main_jsp", "../post/detail.jsp");
	   return "../main/main.jsp";
   }
   /*
    *  Spring 
    *  ------
    *  | String : 화면 변경 
    *             forward / redirect
    *    void : JSON
    */
   @RequestMapping("post/delete.do")
   public void post_delete(HttpServletRequest request,
		   HttpServletResponse response)
   {
	   //1. 사용자 전송값 data:{"no":no,"pwd":pwd}
	   //2. => ?no=1&pwd=1234
	   //vue => axios => params:{"no":no,"pwd":pwd}
	   String no=request.getParameter("no");
	   String pwd=request.getParameter("pwd");
	   // => DAO로 전송 => 결과값 
	   String res=
		 PostDAO.postDelete(Integer.parseInt(no), pwd);
	   try
	   {
		   response.setContentType("text/plain;charset=UTF-8");
		   PrintWriter out=response.getWriter();
		   out.write(res);
	   }catch(Exception ex) {}
   }
   @RequestMapping("post/update.do")
   public String post_update(HttpServletRequest request,
		   HttpServletResponse response)
   {
	   String no=request.getParameter("no");
	   String page=request.getParameter("page");
	   PostVO vo=
			PostDAO.postUpdateData(Integer.parseInt(no));
	   request.setAttribute("vo", vo);
	   request.setAttribute("page", page);
	   request.setAttribute("main_jsp", "../post/update.jsp");
	   return "../main/main.jsp";
   }
   @RequestMapping("post/pwdcheck.do")
   public void post_pwdcheck(HttpServletRequest request,
		   HttpServletResponse response)
   {
	   String no=request.getParameter("no");
	   String pwd=request.getParameter("pwd");
	   String res=
		PostDAO.postPwdCheck(Integer.parseInt(no), pwd);
	   try
	   {
		   response.setContentType("text/plain;charset=UTF-8");
		   PrintWriter out=response.getWriter();
		   out.write(res); // VO=>{}, List=>[] => JSON
	   }catch(Exception ex) {}
   }
   @RequestMapping("post/update_ok.do")
   public void post_update_ok(HttpServletRequest request,
		   HttpServletResponse response)
   {
	
	   try
	   {
		   request.setCharacterEncoding("UTF-8");
	   }catch(Exception ex) {}
	   
	   String poster=request.getParameter("poster");
	   String postTitle=request.getParameter("postTitle");
	   String postContent=request.getParameter("postContent");
	   String postId=request.getParameter("postId");
	   
	   PostVO vo=new PostVO();
	   vo.setPoster(poster);
	   vo.setPostTitle(postTitle);
	   vo.setPostContent(postContent);
	   vo.setPostId(Integer.parseInt(postId));
	   
	   String res=PostDAO.postUpdate(vo);
	   
	   try
	   {
		   response.setContentType("text/plain;charset=UTF-8");
		   PrintWriter out=response.getWriter();
		   out.write(res); // VO=>{}, List=>[] => JSON
	   }catch(Exception ex) {}
   }
   
}