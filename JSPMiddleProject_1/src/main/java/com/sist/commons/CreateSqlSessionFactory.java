package com.sist.commons;

import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// 모든 DAO에서 사용
public class CreateSqlSessionFactory {
    private static SqlSessionFactory ssf;

    static {
        try {
            // MyBatis 설정 파일 이름 (mybatis-config.xml 또는 Config.xml 등)
            Reader reader = Resources.getResourceAsReader("Config.xml");
            ssf = new SqlSessionFactoryBuilder().build(reader);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public static SqlSessionFactory getSsf() {
        return ssf;
    }
}
