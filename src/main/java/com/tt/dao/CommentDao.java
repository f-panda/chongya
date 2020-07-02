package com.tt.dao;

import com.tt.Dto.commentDto;
import com.tt.domain.Comment;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("commentDao")
public interface CommentDao {
    @Insert("insert into t_comment(USERID,ARTICLE,CONTENT) value (#{userId},#{article},#{content})")
    @SelectKey(keyColumn="id",keyProperty="id",resultType=Integer.class,before = false, statement = { "select last_insert_id()" })
    int insertComment(Comment comment);

    @Select("select c.id, u.name, c.article,c.content from t_user u, t_comment c  where c.ARTICLE = #{article} and u.ID = c.USERID")
    List<commentDto> queryByArticleId(String article);

    @Select("select c.ID, u.NAME, c.ARTICLE, c.CONTENT\n" +
            "        from t_user u,t_comment c\n" +
            "        WHERE  u.id = c.USERID")
    List<commentDto> queryAllUser();

    @Delete(" delete from t_comment where ID = #{id}")
    int  deleteById(Integer id);

    @Select("select id,article,content from t_comment where USERID=#{userId}")
    @SelectKey(keyColumn="id",keyProperty="id",resultType=Integer.class,before = false, statement = { "select last_insert_id()" })
    List<Comment> queryByUserId(Integer userId);
}
