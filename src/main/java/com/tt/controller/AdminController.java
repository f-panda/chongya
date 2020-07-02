package com.tt.controller;

import com.tt.domain.userInfo;
import com.tt.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
@Controller("adminController")
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private UserService uService;

    @RequestMapping("/toUpdate/{id}")
    public String toUpdate(@PathVariable("id")Integer id, Model model){
        List<userInfo> userInfo=uService.queryById(id);
        model.addAttribute("list",userInfo);
        return "admin/adminUpdateUser";
    }

     @RequestMapping("/update")
        public String update(userInfo user, Model model){
            if (user.getName() == null || user.getPassword() == null || user.getNumber() == null || user.getClassid() == null ||user.getName() == "" || user.getPassword() == "" || user.getNumber() == 0|| user.getClassid() == ""){
                model.addAttribute("msg","修改失败");
                return "admin/adminUserInfo";
            }
            boolean flag = uService.updateUser(user);
            if(flag){
                List<userInfo> user1 = uService.queryAll();
                model.addAttribute("list",user1);
                model.addAttribute("msg","修改成功");
            }else {
                model.addAttribute("msg","修改失败");
            }

                return "forward:/admin/query/queryAllUsers";

        }

    @RequestMapping("/query/queryAllUsers")
    public String queryAllUsers(Model model){

        List<userInfo> list = uService.queryAll();
        model.addAttribute("list",list);

        return "admin/adminUserInfo";
    }

    @RequestMapping("/delete/{id}")
    public String Delete1(@PathVariable("id")Integer id, Model model){
        boolean flag=uService.deleteById(id);
        if (flag) {
            model.addAttribute("msg","删除成功");
        }else{
            model.addAttribute("msg","删除失败");
        }
        return "forward:/admin/query/queryAllUsers";
    }

}
