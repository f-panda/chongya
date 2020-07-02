package com.tt.service;

import com.tt.domain.Comment;
import com.tt.Dto.commentDto;

import java.util.List;

public interface CommentService {
    boolean insertComment(Comment comment);

    List<commentDto> queryByArticleId(String article);

    List<Comment> queryByUserId(Integer userID);

    List<commentDto> queryAllUser();

    boolean deleteById(Integer id);
}
