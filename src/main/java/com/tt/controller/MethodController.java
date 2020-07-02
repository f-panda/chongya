package com.tt.controller;


import com.tt.domain.Matrix;
import com.tt.domain.userInfo;
import com.tt.service.impl.MatrixServiceImpl;
import com.tt.utils.Convert;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

import static com.mysql.jdbc.StringUtils.getBytes;

@Controller("methodController")
@RequestMapping("/jacobi")
public class MethodController {

    @Autowired
    private MatrixServiceImpl matrixservice;


//
//    int array[][]={{2,-1,0},{-1,-2,-1},{0,-1,2}};
//    String data=String.valueOf(array);
//    double ps=1.1;


    @RequestMapping("/jacobiMethod/")
    public String jacobiMethod(@Param("hang")int hang,@Param("lie") int lie, @Param("ps1")int ps1,@Param("radioId")String radioId,
                               HttpSession session, HttpServletRequest request, Model model) {
        int[][] array;
        userInfo userInfo=(userInfo) session.getAttribute("user");
        Matrix matrix=new Matrix();
        matrix.setUid(userInfo.getId());
        if("1".equals(radioId)){
            matrix.setMethod("经典Jacobi");
        }else if("2".equals(radioId)){
            matrix.setMethod("循环Jacobi");
        }
        else {
            model.addAttribute("error","请选择求解方法");
            return  "contact";
        }

        double ps = Math.pow(Math.E, ps1);
        matrix.setPs(ps);
        try {
            array=new int[hang][lie];
            for(int i=0;i<hang;i++) {
                for (int j = 0; j < lie; j++) {
                    int x = Integer.parseInt(request.getParameter("CollDay" + i + j));
                    array[i][j] = x;
                }
            }
            int i=matrixservice.storeMatrix(matrix,array);
            if(i!=0){
                model.addAttribute("msg","执行成功");
            }else {
                model.addAttribute("msg","执行失败");
            }
            System.out.println("表现层执行了....");
            Matrix matrix1=matrixservice.findEigen(i);
            String vector= matrix1.getVector();
            List<List<String>> list1= Convert.conversion(vector);
            String value= matrix1.getValue();
            List<List<String>> list2=Convert.conversion(value);
            model.addAttribute("matrix",matrix1);
            model.addAttribute("value",list2);
            model.addAttribute("vector",list1);
            int height=30*hang;
            int width=69*hang+30;
            int ww=7*hang;
            model.addAttribute("height",height);
            model.addAttribute("width",width);
            model.addAttribute("ww",ww);

        }catch (Exception e){
            e.printStackTrace();
        }

        return "Result/result";
    }
    @RequestMapping("/delete/${id}")
    public String Delete(@PathVariable("id")Integer id,Model model){
        boolean flag=matrixservice.deleteById(id);
        if(flag){
            model.addAttribute("msg","删除成功");
        }else{
            model.addAttribute("msg","删除失败");
        }
        return "forward:/query/queryMatrix";
    }

}
