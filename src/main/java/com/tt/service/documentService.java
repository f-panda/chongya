package com.tt.service;

import com.tt.domain.Document;

import java.util.List;

public interface documentService {
    List<Document> query();
    void add(Integer id,Integer hot);
}
