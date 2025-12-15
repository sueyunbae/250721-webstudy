package com.sist.model;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

import java.io.PrintWriter;
import java.util.*;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.sist.dao.*;
import com.sist.vo.*;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@Controller
public class FoodModel {
  @RequestMapping("food/detail.do")
  public String food_detail(HttpServletRequest request,
		  HttpServletResponse response)
  {
	  // 사용자가 보낸 데이터 받기  ?fno &page
	  String fno=request.getParameter("fno");
	  String curpage=request.getParameter("page");
	  // 상세보기 데이터 
	  FoodVO vo=FoodDAO.foodDetailData(Integer.parseInt(fno));
	  
	  request.setAttribute("curpage", curpage);
	  request.setAttribute("vo", vo);
	  
	  request.setAttribute("main_jsp", "../food/detail.jsp");
	  return "../main/main.jsp";
  }
  // Ajax 
  @RequestMapping("food/type.do")
  public String food_type(HttpServletRequest request,
		  HttpServletResponse response)
  {
	  // 해당 음식종류 찾기 
	  String type=request.getParameter("type");
	  // DAO로 전송 
	  String page=request.getParameter("page");
	  if(page==null)
		  page="1";
	  if(type==null)
		  type="한식";
	  
	  int curpage=Integer.parseInt(page); // 현재페이지
	  Map map=new HashMap();
	  int rowSize=12;
	  int start=rowSize*(curpage-1); // OFFSET => 0부터 시작 / InlineView => 1부터 시작
	  
	  map.put("start", start);
	  map.put("type", type);
	  
	  // 데이터를 읽어 온다
	  List<FoodVO> list=FoodDAO.foodTypeListData(map);
	  int totalpage=FoodDAO.foodTypeTotalPage(type);
	  
	  // 블록별 페이지 나누기
	  /*
	   * 	1. 현재 페이지 (curpage)
	   * 		1~10 ===> 1 유지
	   * 		11~20 ===> 11 유지
	   * 
	   * 		-----------------
	   * 		1~10 ==> 10유지
	   * 		11~20 ==> 20유지
	   * */
	  
	  final int BLOCK=10;
	  int startPage=((curpage-1)/BLOCK*BLOCK)+1;
	  int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
	  if(endPage>totalpage)
		  endPage=totalpage;
	  // JSP에 출력할 데이터를 전송 request.setAttribute
	  // 목록 : list / 페이지 : curpage/totalpage/startPage/endPage
	  request.setAttribute("list", list);
	  request.setAttribute("curpage", curpage);
	  request.setAttribute("totalpage", totalpage);
	  request.setAttribute("startPage", startPage);
	  request.setAttribute("endPage", endPage);
	  request.setAttribute("type", type);
	  request.setAttribute("main_jsp","../food/type.jsp");
	  return "../main/main.jsp";
  }
  // Ajax 
  @RequestMapping("food/find.do")
  public String food_find(HttpServletRequest request,
		  HttpServletResponse response)
  {
	  String column=request.getParameter("column");
	  String ss=request.getParameter("ss");
	  if(ss==null)
		  ss="마포";
	  if(column==null)
		  column="address";
	  Map map=new HashMap();
	  map.put("ss", ss);
	  map.put("column", column);
	  List<FoodVO> list=FoodDAO.foodFindListData(map);
	  request.setAttribute("list", list);
	  request.setAttribute("main_jsp","../food/find.jsp");
	  return "../main/main.jsp";
  }
  @RequestMapping(value="food/food_vue.do")
  public void food_vue_list(HttpServletRequest request,
                            HttpServletResponse response)
  {
      try {
          String type = request.getParameter("type");
          if(type == null)
              type = "한식";
          
          // DAO에서 데이터 가져오기
          List<FoodVO> list = FoodDAO.foodAjaxListData(type);
          
          // JSON 배열 생성
          JSONArray arr = new JSONArray();
          for(FoodVO vo : list) {
              JSONObject obj = new JSONObject();
              obj.put("fno", vo.getFno());
              obj.put("poster", vo.getPoster());
              obj.put("name", vo.getName());
              arr.add(obj);
          }
          
          // 응답 전송
          response.setContentType("application/json;charset=UTF-8");
          PrintWriter out = response.getWriter();
          out.print(arr.toJSONString());
          out.flush();
          out.close();
          
      } catch(Exception ex) {
          ex.printStackTrace();
      }
  }

}