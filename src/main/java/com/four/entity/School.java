package com.four.entity;

public class School {
    //学校
    private Integer id;
    private String name;
    private String xuhao;
    private String createdate;
    private String pid;

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getXuhao() {
        return xuhao;
    }

    public String getCreatedate() {
        return createdate;
    }

    public String getPid() {
        return pid;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setXuhao(String xuhao) {
        this.xuhao = xuhao;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    @Override
    public String toString() {
        return "School{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", xuhao='" + xuhao + '\'' +
                ", createdate='" + createdate + '\'' +
                ", pid='" + pid + '\'' +
                '}';
    }
}
