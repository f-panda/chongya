package com.tt.domain;

import java.io.Serializable;
import java.util.List;

public class Matrix implements Serializable {
    private Integer id;
    private Integer uid;
    private String method;
    private String data;
    private Double ps;
    private String vector;
    private String value;
    private Integer st;
    private List<List<String>> dataList;
    private List<List<String>> vectorList;
    private List<List<String>> valueList;

    public List<List<String>> getDataList() {
        return dataList;
    }

    public void setDataList(List<List<String>> dataList) {
        this.dataList = dataList;
    }

    public List<List<String>> getVectorList() {
        return vectorList;
    }

    public void setVectorList(List<List<String>> vectorList) {
        this.vectorList = vectorList;
    }

    public List<List<String>> getValueList() {
        return valueList;
    }

    public void setValueList(List<List<String>> valueList) {
        this.valueList = valueList;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public Double getPs() {
        return ps;
    }

    public void setPs(Double ps) {
        this.ps = ps;
    }

    public String getVector() {
        return vector;
    }

    public void setVector(String vector) {
        this.vector = vector;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Integer getSt() {
        return st;
    }

    public void setSt(Integer st) {
        this.st = st;
    }

    @Override
    public String toString() {
        return "Matrix{" +
                "id=" + id +
                ", uid=" + uid +
                ", data='" + data + '\'' +
                ", ps=" + ps +
                ", vector='" + vector + '\'' +
                ", value='" + value + '\'' +
                ", st=" + st +
                '}';
    }
}
