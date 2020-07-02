package com.tt.utils;

import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component("Convert")
public class Convert {

    public static List<List<String>> conversion(String matrix) {

        String[] str = matrix.split("\n");
        List<List<String>> list1 = new ArrayList<>();
        for (String s : str) {
            List<String> list11 = new ArrayList<>();
            s = s.trim();
            String[] strings = s.split("   ");
            for (String string : strings) {

                if (string != "" && string != null && string != " " && string != "  " && string.length() != 0&& !"".equals(string)){
                    string = string.trim();
                    list11.add(string);
                }
            }
            list1.add(list11);
        }
            return list1;
    }

}
