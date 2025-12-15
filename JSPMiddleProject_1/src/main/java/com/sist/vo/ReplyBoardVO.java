package com.sist.vo;

import java.util.*;
import lombok.Data;
/*
 * 		1. 데이터베이스 설계(테이블)
 * 		2. VO를 제작
 * 		3. MyBatis 연동
 * 		4. 사용자 요청 => 결과값을 브라우저로
 * 		   -------------------------
 * 			| 화면 변경 없이 => 데이터만 변경
 * 				예약 / 로그인 / 장바구니 / 페이징 / 회원가입
 * 				=> Jquery(Ajax) Vue React
 * 			| 화면이 변경
 */
/*
NO         NOT NULL NUMBER         
NAME       NOT NULL VARCHAR2(51)   
SUBJECT    NOT NULL VARCHAR2(2000) 
CONTENT    NOT NULL CLOB           
PWD        NOT NULL VARCHAR2(10)   
REGDATE             DATE           
HIT                 NUMBER         
GROUP_ID            NUMBER         
GROUP_STEP          NUMBER         
GROUP_TAB           NUMBER         
ROOT                NUMBER         
DEPTH               NUMBER
*/
// VO : 데이터를 모아서 전송 (==DTO,bean) 한세트 : VO DAO Model mapper JSP
@Data
public class ReplyBoardVO {
	private int no,hit,group_id,group_step,group_tab,root,depth;
	private String name,subject,content,pwd,dbday;
	private Date regdate;
}
