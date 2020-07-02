package com.tt.dao;

import com.tt.domain.Document;
import com.tt.domain.userInfo;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("DocumentDao")
public interface DocumentDao {

    @Select("select * from t_document")
    @Results(id="documentMap",
            value= {
                    @Result(id=true,column="ID",property="id"),
                    @Result(column="DOCUMENTNAME",property="name"),
                    @Result(column="DOCUMENTADDRESS",property="address"),
                    @Result(column="DOCUMENTHOT",property="hot"),
            })
    List<Document> query();

    @Update("update t_document set DOCUMENTHOT=#{hot} where ID=#{id}")
    int add(@Param("id") Integer id,@Param("hot")Integer hot);
}
