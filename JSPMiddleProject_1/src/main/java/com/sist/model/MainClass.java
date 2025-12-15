package com.sist.model;

import java.text.SimpleDateFormat;
import java.util.*;

public class MainClass {
    public static void main(String[] args) {
        // 오늘 날짜를 문자열로 변환
        String today = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        System.out.println("오늘 날짜: " + today);
        
        // 날짜 분리 (년, 월, 일)
        StringTokenizer st = new StringTokenizer(today, "-");
        String sy = st.nextToken(); // 년
        String sm = st.nextToken(); // 월
        String sd = st.nextToken(); // 일

        // null인 경우 기본값 설정
        String strYear = null;
        String strMonth = null;
        String strDay = null;

        if (strYear == null) strYear = sy;
        if (strMonth == null) strMonth = sm;
        strDay = sd;

        int year = Integer.parseInt(strYear);
        int month = Integer.parseInt(strMonth);
        int day = Integer.parseInt(strDay);

        // 달력 계산
        Calendar cal = Calendar.getInstance();
        cal.set(Calendar.YEAR, year);
        cal.set(Calendar.MONTH, month - 1);
        cal.set(Calendar.DATE, 1);

        String[] strWeek = {"일", "월", "화", "수", "목", "금", "토"};
        int week = cal.get(Calendar.DAY_OF_WEEK) - 1;
        int lastday = cal.getActualMaximum(Calendar.DATE);

        System.out.println("해당 월의 1일 요일: " + strWeek[week]);
        System.out.println("마지막 일: " + lastday);
    }
}
