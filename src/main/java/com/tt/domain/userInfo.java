package com.tt.domain;


import java.io.Serializable;
import java.util.List;

public class userInfo implements Serializable {
    private Integer id;
    private String name;
    private String password;
    private Integer number;
    private String classid;
    private Integer role;

    List<Matrix> matrices;

    public List<Matrix> getMatrices() {
        return matrices;
    }

    public void setMatrices(List<Matrix> matrices) {
        this.matrices = matrices;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getClassid() {
        return classid;
    }

    public void setClassid(String classid) {
        this.classid = classid;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "userInfo{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", number=" + number +
                ", classid='" + classid + '\'' +
                ", role=" + role +
                '}';
    }
}
