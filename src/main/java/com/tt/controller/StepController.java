package com.tt.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/step")
public class StepController {

    @RequestMapping("/demonstration")
    public String DemonStration(@Param("radioId") int radioId) {
        switch (radioId) {
            case 1:
                return "demonstration/eig1";
            case 2:
                return "demonstration/eig2";
            case 3:
                return "demonstration/eig3";
        }
            return "index";
    }
}
