package com.tt.service.impl;

import com.github.pagehelper.Page;
import com.tt.dao.UserDao;
import com.tt.domain.userInfo;
import com.tt.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("userService")
public class UserServiceImpl implements UserService {
//    @Override
//    public UserDetails loadUserByUsername(String name) throws UsernameNotFoundException {
//        userInfo userinfo=uu.findByName(name);
//        User user=new User(userinfo.getName(),userinfo.getPassword(),userinfo.getRole());
//        return user;
//    }

    @Autowired
    @Qualifier("userDao")
    private UserDao uDao;


    @Override
    public List<userInfo> queryAll() {

        return uDao.findAll();
    }

    @Override
    public userInfo queryUserByUsernameAndPassword(int number, String password) {
        userInfo user=uDao.queryUserByUsernameAndPassword(number,password);
        return user;
    }


    @Override
    public Boolean insertUser(userInfo user) {
        int count = uDao.insertUser(user);
        return count == 1 ? true : false;
    }

    @Override
    public Boolean updateUser(userInfo user) {
        int id=uDao.updateUser(user);
        return id==1?true:false;
    }

    @Override
    public List<userInfo> queryById(Integer id) {
        List<userInfo> user=uDao.queryById(id);
        return user;
    }

    @Override
    public userInfo queryByNumber(Integer number) {
        System.out.println("业务层执行了....");
        return null;

    }

    @Override
    public Boolean deleteById(Integer id) {
        return uDao.deleteById(id)==1?true:false;
    }
}
