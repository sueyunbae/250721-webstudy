package com.sist.vo;
/*
	POSTID      NOT NULL NUMBER(10)    
	ID          NOT NULL NUMBER(10)    
	POSTTYPE    NOT NULL NUMBER(1)     
	POSTTITLE   NOT NULL VARCHAR2(100) 
	POSTCONTENT NOT NULL CLOB          
	POSTVIEW    NOT NULL NUMBER(5)     
	POSTDATE             DATE          
	POSTER      NOT NULL VARCHAR2(50)  
	POSTIMAGE            VARCHAR2(200) 
*/
import java.util.*;

import lombok.Data;
@Data
public class PostVO {
	private int postId,id,postType,postView;
	private String postTitle,postContent,poster,postImage;
	private Date postDate;
}
