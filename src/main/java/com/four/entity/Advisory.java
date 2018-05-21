package com.four.entity;

public class Advisory {

    //咨询父级分类
    private Integer id;
    private String name;
    private String xuhao;
    private Integer fanshi;
    private String createdate;

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

    public String getXuhao() {
        return xuhao;
    }

    public void setXuhao(String xuhao) {
        this.xuhao = xuhao;
    }

    public Integer getFanshi() {
        return fanshi;
    }

    public void setFanshi(Integer fanshi) {
        this.fanshi = fanshi;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }


    @Override
    public String toString() {
        return "Advisory{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", xuhao='" + xuhao + '\'' +
                ", fanshi=" + fanshi +
                ", createdate='" + createdate + '\'' +
                '}';
    }
}