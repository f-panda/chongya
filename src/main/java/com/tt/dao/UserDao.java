package com.tt.dao;

import com.tt.domain.userInfo;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userDao")
public interface UserDao {

    @Select("select * from t_user")
    @Results(id="userMap",
            value= {
            @Result(id=true,column="ID",property="id"),
                    @Result(column="NAME",property="name"),
                    @Result(column="NUMBER",property="number"),
                    @Result(column="PASSWORD",property="password"),
                    @Result(column="CLASS",property="classid"),
                    @Result(column="ROLE",property="role"),
                    @Result(column="ID",property="matrices",
                            many=@Many(
                                    select="com.tt.dao.MatrixDao.findByUid",
                                    fetchType= FetchType.LAZY         )
                    )
            })
    List<userInfo> findAll();

    @Select("select * from t_user where ID=#{id}")
    @ResultMap("userMap")
    List<userInfo> queryById(int id);


    @Select("select * from t_user where NUMBER=#{number} and PASSWORD=#{password}")
    @ResultMap("userMap")
    userInfo queryUserByUsernameAndPassword(@Param("number")int number, @Param("password")String password);

    @Update("insert into t_user(NAME,PASSWORD,NUMBER,CLASS,ROLE) values(#{name},#{password},#{number},#{classid},'0')")
    @Options(useGeneratedKeys = true, keyProperty = "id", keyColumn = "ID")
    Integer insertUser(userInfo user);

    @Update("update t_user set NAME=#{name},PASSWORD=#{password},NUMBER=#{number},CLASS=#{classid} where ID=#{id}")
    Integer updateUser(userInfo user);

    @Update("delete from t_user where ID=#{id}")
    Integer deleteById(Integer id);


//
//    /**
//     * 根据传入参数条件
//     * @param user 查询的条件：有可能有用户名，有可能有性别，也有可能有地址，还有可能是都有
//     * @return
//     */
//    List<user> findUserByCondition(user user);

}
