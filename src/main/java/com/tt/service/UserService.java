package com.tt.service;


import com.tt.domain.userInfo;

import java.util.List;


public interface UserService {
     List<userInfo> queryAll();
     userInfo queryByNumber(Integer number);
     userInfo queryUserByUsernameAndPassword(int number,String password);
     Boolean insertUser(userInfo user);
     Boolean updateUser(userInfo user);
     List<userInfo>  queryById(Integer id);//涉及多表查询
     Boolean deleteById(Integer id);


}
