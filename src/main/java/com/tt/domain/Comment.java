package com.tt.domain;

import java.io.Serializable;

public class Comment implements Serializable {
    private Integer id;
    private Integer userId;
    private String article;
    private String content;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getArticle() {
        return article;
    }

    public void  setArticle(String article){
        this.article=article;
    }

    public String setArticle(Integer articleId) {
       if(articleId==1){
         article="矩阵输入";
       }
       if(articleId==2){
           article="单步演示";
       }
       if(articleId==3){
           article="总结分析";
       }
       return article;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
