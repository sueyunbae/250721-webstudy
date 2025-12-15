package com.sist.dao;

import java.util.*;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.PostVO;
import com.sist.commons.*;;
 
public class PostDAO {
    private static SqlSessionFactory ssf;
    
    static {
        ssf = CreateSqlSessionFactory.getSsf();
    }
    
    // 1️⃣ 게시글 목록 (페이징)
    public static List<PostVO> postListData(int start) {
        List<PostVO> list = new ArrayList<>();
        SqlSession session = null;
        try {
            session = ssf.openSession();
            list = session.selectList("postListData", start);
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if(session != null) session.close();
        }
        return list;
    }
    
    // 2️⃣ 전체 게시글 수
    public static int postTotalPage() {
        int count = 0;
        SqlSession session = null;
        try {
            session = ssf.openSession();
            count = session.selectOne("postTotalPage");
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if(session != null) session.close();
        }
        return count;
    }
    
    // 3️⃣ 게시글 추가
    public static void postInsert(PostVO vo) {
        SqlSession session = null;
        try {
            session = ssf.openSession(true); // autoCommit = true
            session.insert("postInsert", vo);
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if(session != null) session.close();
        }
    }
    
    // 4️⃣ 조회수 증가
    public static void postHitIncrement(int postId) {
        SqlSession session = null;
        try {
            session = ssf.openSession(true);
            session.update("postHitIncrement", postId);
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if(session != null) session.close();
        }
    }
    
    // 5️⃣ 게시글 상세보기
    public static PostVO postDetailData(int postId) {
        PostVO vo = null;
        SqlSession session = null;
        try {
            session = ssf.openSession();
            vo = session.selectOne("postDetailData", postId);
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if(session != null) session.close();
        }
        return vo;
    }
}
