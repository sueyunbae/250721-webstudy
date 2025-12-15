package com.sist.dao;

import java.util.*;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.commons.CreateSqlSessionFactory;
import com.sist.vo.*;

public class PostDAO {
  private static SqlSessionFactory ssf;

  static {
    ssf = CreateSqlSessionFactory.getSsf(); // getConnection(), disConnection()
  }

  // 목록
  public static List<PostVO> postListData(Map map)
  {
      List<PostVO> list = null;
      try {
          SqlSession session = ssf.openSession();
          list = session.selectList("postListData", map);
          session.close();
      } catch (Exception ex) {
          ex.printStackTrace();
      }
      return list;
  }

  // 총 페이지 수
  public static int postTotalPage() {
    int total = 0;
    try {
      SqlSession session = ssf.openSession();
      total = session.selectOne("postTotalPage"); // postTotalPage는 XML의 id
      session.close();
    } catch (Exception ex) {
      ex.printStackTrace();
    }
    return total;
  }

  // 게시물 추가
  public static void postInsert(PostVO vo) {
    try {
      SqlSession session = ssf.openSession(true); // 자동 commit
      session.insert("postInsert", vo); // postInsert는 XML의 id
      session.close(); // 생략 가능
    } catch (Exception ex) {
      ex.printStackTrace();
    }
  }

  // 조회수 증가
  public static PostVO postDetailData(int postId, int type) {
    PostVO vo = null;
    try {
      SqlSession session = ssf.openSession();
      if (type == 0) {
        session.update("postHitIncrement", postId); // postHitIncrement는 XML의 id
        session.commit();
      }
      vo = session.selectOne("postDetailData", postId); // postDetailData는 XML의 id
      session.close();
    } catch (Exception ex) {
      ex.printStackTrace();
    }
    return vo;
  }

  // 게시물 삭제
  public static String postDelete(int postId, String pwd) {
    String res = "no";
    try {
      SqlSession session = ssf.openSession();
      String dbPwd = session.selectOne("postGetPassword", postId); // postGetPassword는 XML의 id
      if (dbPwd != null && dbPwd.equals(pwd)) {
        session.delete("postDelete", postId); // postDelete는 XML의 id
        session.commit();
        res = "yes";
      }
      session.close();
    } catch (Exception ex) {
      ex.printStackTrace();
    }
    return res;
  }

  // 게시물 수정 데이터
  public static PostVO postUpdateData(int postId) {
    PostVO vo = null;
    try {
      SqlSession session = ssf.openSession();
      vo = session.selectOne("postDetailData", postId); // postDetailData는 XML의 id
      session.close();
    } catch (Exception ex) {
      ex.printStackTrace();
    }
    return vo;
  }

  // 비밀번호 체크
  public static String postPwdCheck(int postId, String pwd) {
    String res = "no";
    try {
      SqlSession session = ssf.openSession();
      String dbPwd = session.selectOne("postGetPassword", postId); // postGetPassword는 XML의 id
      if (dbPwd != null && dbPwd.equals(pwd)) {
        res = "yes";
      }
      session.close();
    } catch (Exception ex) {
      ex.printStackTrace();
    }
    return res;
  }

  // 게시물 수정
  public static String postUpdate(PostVO vo) {
    String res = "";
    try {
      SqlSession session = ssf.openSession();
      session.update("postUpdate", vo); // postUpdate는 XML의 id
      session.commit();
      session.close();
      res = "yes";
    } catch (Exception ex) {
      ex.printStackTrace();
      res = ex.getMessage();
    }
    return res;
  }
}
