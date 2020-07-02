package com.tt.service.impl;

import com.tt.dao.DocumentDao;
import com.tt.domain.Document;
import com.tt.service.documentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("documentService")
public class documentServiceImpl implements documentService {
    @Autowired
    @Qualifier("DocumentDao")
    private DocumentDao dd;

    @Override
    public List<Document> query() {
       List<Document> document = dd.query();
        return  document;
    }

    @Override
    public void add(Integer id,Integer hot) {
        dd.add(id,hot);
    }
}
