package com.tt.controller;

import com.tt.domain.Comment;
import com.tt.domain.userInfo;
import com.tt.Dto.commentDto;
import com.tt.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller("commentController")
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    private CommentService commentService;

    @RequestMapping("/delete1/{id}")
    public String Delete1(@PathVariable("id")Integer id,Model model){
        boolean flag=commentService.deleteById(id);
        if (flag) {
            model.addAttribute("msg","删除成功");
        }else{
            model.addAttribute("msg","删除失败");
        }
        return "forward:/comment/query/queryByUserId";
    }
    @RequestMapping("/delete2/{id}")
    public String Delete2(@PathVariable("id")Integer id,Model model){
        boolean flag=commentService.deleteById(id);
        if (flag) {
            model.addAttribute("msg","删除成功");
        }else{
            model.addAttribute("msg","删除失败");
        }
        return "forward:/comment/query/queryAllUser";
    }


    @RequestMapping("/insert/{articleId}")
    public String insertComment(@PathVariable("articleId") Integer articleId, String content, HttpSession session, Model model){
        userInfo user = (userInfo) session.getAttribute("user");
        Comment comment1 = new Comment();
        comment1.setArticle(articleId);
        comment1.setContent(content);
        comment1.setUserId(user.getId());

        boolean flag = commentService.insertComment(comment1);

            if (flag){
                model.addAttribute("msg","记录成功");

            }else{
                model.addAttribute("msg","记录失败");
        }
        return "forward:/comment/query/" + articleId;
    }

    @RequestMapping("/query/queryByUserId")
    public String queryByUserId(HttpSession session, Model model){

        userInfo user= (userInfo)session.getAttribute("user");
        List<Comment> comments = commentService.queryByUserId(user.getId());

        model.addAttribute("list", comments);

        return "users/commentInfo";
    }
    @RequestMapping("/query/queryAllUser")
    public String queryAllUser(Model model){
        List<commentDto> comments = commentService.queryAllUser();

        model.addAttribute("list", comments);

        return "admin/adminCommentInfo";
    }

    @RequestMapping("/query/{articleId}")
    public String queryComment(@PathVariable("articleId")Integer articleId,Model model){
        Comment comment1=new Comment();
        String article=comment1.setArticle(articleId);
        List<commentDto> list = commentService.queryByArticleId(article);
        model.addAttribute("list",list);
        if(articleId==1){
            return "contact";
        }
        if(articleId==2){
            return "oneStepDemonstration";
        }
        else {
            return "analysis";
        }

    }

//    @RequestMapping("/list")
//    public String queryAll(Model model){
//
//        List<commentDto> list = CommentService.queryAll();
//
//        model.addAttribute("list", list);
//
//        return "admin/adminComment";
//    }

}
