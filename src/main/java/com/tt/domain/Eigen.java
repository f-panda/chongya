package com.tt.domain;

import com.mathworks.toolbox.javabuilder.MWArray;
import com.mathworks.toolbox.javabuilder.MWClassID;
import com.mathworks.toolbox.javabuilder.MWException;
import com.mathworks.toolbox.javabuilder.MWNumericArray;
import com.mysql.jdbc.util.ReadAheadInputStream;
import eig_Jacobi.Jacobi;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.awt.image.RenderedImage;
import java.io.*;
import java.util.Arrays;
import java.util.Random;

public class Eigen {
//    public void geiVerifiCodeImg(HttpServletResponse resp, HttpServletRequest req) throws Exception {
//        //创建Servlet输出流
//        ServletOutputStream os = resp.getOutputStream();
//        //初始化图片，width：75，height：48，imageType：RGB
//       BufferedImage img = new BufferedImage(75,48,1);
//        //初始化画笔
//        Graphics graphics = img.getGraphics();
//        //设置背景颜色白色
//        graphics.setColor(Color.WHITE);
//        graphics.fillRect(0, 0, 75, 48);
//        String s = "ABCefghDEFGHI23456JKLTUVuvwsyzWXYZ17890abcdijklnmopqrNNOPQRSst";
//        //转换字符串s为char类型数组
//        char[] str = s.toCharArray();
//        //设置要输出的字符串String
//        //创建随机数
//        String code = "";
//        Random r = new Random();
//        //设置画笔的字体
//        graphics.setFont(new Font("楷体",3,22));
//        //设置字体可变的颜色
//       Color[] colors = {Color.blue,Color.cyan,Color.DARK_GRAY,Color.BLACK,Color.RED};
//       //循环生成随机验证码
//        for(int i = 0;i <= 3;i++){
//            graphics.setColor(colors[r.nextInt(colors.length)]);
//            int index = r.nextInt(s.length());
//            code = code + str[index];
//            graphics.drawString(code,16*i,30+r.nextInt(11));
//        }
//        //画出乱线
//        graphics.setColor(Color.GRAY);
//        for (int i = 0; i <= 3; i++) {
//            graphics.drawLine(r.nextInt(75), r.nextInt(48), r.nextInt(75), r.nextInt(48));
//        }
//        //向外输出生成的图片
//        HttpSession session = req.getSession();
//        System.out.println("后台系统生成的登陆验证码" + code);
//        session.setAttribute("loginCode", code);
//        ImageIO.write(img,"jpg",os);
//    }
    //    private Integer id;
//    private String vector;
//    private String value;
//
//    public Integer getId() {
//        return id;
//    }
//
//    public void setId(Integer id) {
//        this.id = id;
//    }
//
//    public String getVector() {
//        return vector;
//    }
//
//    public void setVector(String vector) {
//        this.vector = vector;
//    }
//
//    public String getValue() {
//        return value;
//    }
//
//    public void setValue(String value) {
//        this.value = value;
//    }
//
//    @Override
//    public String toString() {
//        return "Eigen{" +
//                "id=" + id +
//                ", vector='" + vector + '\'' +
//                ", value='" + value + '\'' +
//                '}';
//    }
//}
    public static void main(String[] args) {
        MWNumericArray q = null;
        MWNumericArray z=null;
        Object[] result1 = null;
        Jacobi js=null;
        int[][] data={{2,1,2},{1,2,2},{2,2,1}};
        double ps=Math.pow(Math.E,-12);

        try
        {
            q =new

                    MWNumericArray(data, MWClassID.DOUBLE);
            z=new
                    MWNumericArray(ps,MWClassID.DOUBLE);
            String str2 = String.valueOf(q);
            System.out.println(str2);
            js=new Jacobi();
            result1 =js.eig_lymeigjacobi(3,q,z);
            System.out.println(result1[0]);
            System.out.println(result1[1]);
            String value= String.valueOf(result1[0]);
            System.out.println(value);


        } catch(
                MWException e)

        {
            e.printStackTrace();
        } finally

        {
            MWArray.disposeArray(z);
            MWArray.disposeArray(q);
            MWArray.disposeArray(result1);

            js.dispose();
        }
    }
}