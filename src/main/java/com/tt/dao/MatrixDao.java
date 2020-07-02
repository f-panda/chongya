package com.tt.dao;

import com.tt.domain.Matrix;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("matrixDao")
public interface MatrixDao {

    @Update("insert into t_matrix(DATA,PS,UID,METHOD,VALUE,VECTOR,ST) values(#{data},#{ps},#{uid},#{method},#{value},#{vector},#{st})")
    @Options(useGeneratedKeys = true, keyProperty = "id", keyColumn = "ID")
    Integer storeMatrix(Matrix matrix);

    @Select("select * from t_matrix where ID=#{id}")
    @Results(id="matrixMap",
            value= {
                    @Result(id=true,column="ID",property="id"),
                    @Result(column = "UID",property = "uid"),
                    @Result(column="DATA",property="data"),
                    @Result(column="PS",property="ps"),
                    @Result(column="VECTOR",property="vector"),
                    @Result(column="VALUE",property="value"),
                    @Result(column="ST",property="st")

            })
    Matrix findEigen(int id);

    @Select("select * from t_matrix where UID=#{uid}")
    @ResultMap("matrixMap")
    List<Matrix> findByUid(Integer uid);

    @Delete("delete from t_matrix where ID = #{id}")
    int deleteById(Integer id);




}
