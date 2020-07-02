package com.tt.controller;


import com.tt.domain.Document;
import com.tt.service.documentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
@RequestMapping("/document")
public class documentController {
    @Autowired
    private documentService ds;

    @RequestMapping("/queryAll")
    public String query(Model model){
        List<Document> documents=ds.query();
        model.addAttribute("document",documents);
        return "Result/document";
    }

    @RequestMapping(value = "/add", method = {RequestMethod.POST})
    @ResponseBody
    public void add(Integer id, Integer hot){
        hot=hot+1;
      ds.add(id,hot);
    }

}
