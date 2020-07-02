package com.tt.Dto;


import java.io.Serializable;

public class commentDto implements Serializable {
        private String name;
        private Integer id;
        private String article;
        private String content;

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public Integer getId() {
                return id;
            }

            public void setId(Integer id) {
                this.id = id;
            }

        public String getArticle() {
            return article;
        }

    public void setArticle(String article) {
        this.article = article;
    }

    public String getContent() {
            return content;
        }

        public void setContent(String content) {
            this.content = content;
        }
    }
