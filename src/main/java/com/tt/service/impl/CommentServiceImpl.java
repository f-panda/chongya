package com.tt.service.impl;

import com.tt.dao.CommentDao;
import com.tt.domain.Comment;
import com.tt.Dto.commentDto;
import com.tt.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("commentService")
public class CommentServiceImpl implements CommentService {
    @Autowired
    @Qualifier("commentDao")
    private CommentDao commentDao;

    @Override
    public boolean insertComment(Comment comment) {
        return commentDao.insertComment(comment)==1 ? true : false;
    }

    @Override
    public List<commentDto> queryByArticleId(String article) {
        return commentDao.queryByArticleId(article);
    }

    @Override
    public boolean deleteById(Integer id) {
        return commentDao.deleteById(id)==1 ? true : false;
    }

    @Override
    public List<commentDto> queryAllUser() {
        return commentDao.queryAllUser();
    }

    @Override
    public List<Comment> queryByUserId(Integer userID) {
        List<Comment> comments=commentDao.queryByUserId(userID);
        return comments;
    }
}
