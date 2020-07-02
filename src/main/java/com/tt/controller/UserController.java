package com.tt.controller;

import com.tt.domain.Matrix;
import com.tt.domain.userInfo;
import com.tt.service.UserService;
import com.tt.utils.Convert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.List;

@Controller("userController")
@RequestMapping("/user")
public class UserController {

        @Autowired
        private UserService uService;

        @RequestMapping("/toLogin")
        public String login(HttpServletRequest request, HttpSession session, Model model){
            int number=Integer.parseInt(request.getParameter("number"));
            String password=request.getParameter("password");
            String vercode=request.getParameter("vercode");
            String loginCode = (String) session.getAttribute("loginCode");
            if (number == 0 ){
                model.addAttribute("msg","用户名不能为空");
                return "admin/login";
            }
            if (password == null || password == ""){
                model.addAttribute("msg","密码不能为空");
                return "admin/login";
            }
            if (!loginCode.equalsIgnoreCase(vercode)) {//判断验证码
                model.addAttribute("msg","验证码不正确");
                return "admin/login";
            }

            userInfo user = uService.queryUserByUsernameAndPassword(number,password);
            System.out.println("登录执行了");
            if (user != null){
                session.setAttribute("user", user);
                if(user.getRole() == 1){
                    return "admin/index";
                }else {
                    return "admin/index";
                }

            }else {
                model.addAttribute("msg","用户名或者密码错误");
                return "admin/login";
            }

        }

        @RequestMapping("/logout")
        public String logout(HttpSession session){
            session.removeAttribute("user");
            return "index";
        }

        @RequestMapping("/register")
        public String register(userInfo user, Model model){
            if (user.getName() == null || user.getPassword() == null || user.getNumber() == null || user.getClassid() == null ||user.getName() == "" || user.getPassword() == "" || user.getNumber() == 0 || user.getClassid() == ""){
                model.addAttribute("msg","注册失败,请重新注册");
                return "admin/login";
            }
            boolean flag = uService.insertUser(user);
            if (flag){
                model.addAttribute("msg","注册成功");
            }else {
                model.addAttribute("msg","注册失败,请重新注册");
            }
            return "admin/login";
        }

        @RequestMapping("/toUpdate/{id}")
        public String toUpdate(@PathVariable("id")Integer id, Model model){
            List<userInfo> userInfo=uService.queryById(id);
            model.addAttribute("list",userInfo);
            return "users/updateUser";
        }

        @RequestMapping("/update")
        public String update(userInfo user, Model model, HttpSession session) {
            if (user.getName() == null || user.getPassword() == null || user.getNumber() == null || user.getClassid() == null || user.getName() == "" || user.getPassword() == "" || user.getNumber() == 0 || user.getClassid() == "") {
                model.addAttribute("msg", "修改失败");
                return "users/userInfo";
            }
            boolean flag = uService.updateUser(user);
            if (flag) {
                model.addAttribute("msg", "修改成功");
                userInfo user1 = uService.queryUserByUsernameAndPassword(user.getNumber(), user.getPassword());
                if (user.getPassword().equals(user1.getPassword()) ) {
                    session.setAttribute("user", user1);
                } else {
                    model.addAttribute("msg", "修改成功,请重新登录！");
                    return "admin/login";
                }
            }
            else{
                    model.addAttribute("msg", "修改失败");
                }
            return "users/userInfo";
        }

    @RequestMapping("/query/queryOneUser")
    public String queryOneUser(){
            return "users/userInfo";
        }

    @RequestMapping("/query/queryMatrix")
    public String queryMatrix(HttpSession session,Model model){
        userInfo user= (userInfo)session.getAttribute("user");
        List<userInfo> users = uService.queryById(user.getId());
        for(userInfo userinfo:users){
            System.out.println(userinfo);
            List<Matrix> matrices= userinfo.getMatrices();
            for(Matrix m:matrices){
                String data= m.getData();
                m.setDataList(Convert.conversion(data));
                String vector=m.getVector();
                m.setVectorList(Convert.conversion(vector));
                String value=m.getValue();
                m.setValueList(Convert.conversion(value));
            }

            model.addAttribute("list",matrices);
        }
        return "users/matrixInfo";
    }

//
//        @RequestMapping("/list")
//        public String queryAll(Model model){
//            List<userInfo> list = uService.queryAll();
//            model.addAttribute("list", list);
//            return "admin/user";
//        }

//    @RequestMapping("/testfindALL")
//    public String testfindALL(Model model){
//        System.out.println("表现层执行了....");
//        model.addAttribute("list",uservice.findAll());
//        return "contact";
//
//    }
//
//    @RequestMapping("/testfindByName")
//    public String testfindByName(Model model){
//        System.out.println("表现层执行了....");
//        model.addAttribute("list", uservice.findByName());
//
//        return "contact";
//
//    }
}
