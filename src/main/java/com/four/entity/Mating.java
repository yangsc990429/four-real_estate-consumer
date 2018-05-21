package com.four.entity;

public class Mating {
    //物业配套
    private Integer id;
    private String name;
    private String sell;
    private String rentout;
    private String xuhao;
    private String createdate;

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getSell() {
        return sell;
    }

    public String getRentout() {
        return rentout;
    }

    public String getXuhao() {
        return xuhao;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSell(String sell) {
        this.sell = sell;
    }

    public void setRentout(String rentout) {
        this.rentout = rentout;
    }

    public void setXuhao(String xuhao) {
        this.xuhao = xuhao;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    @Override
    public String toString() {
        return "Mating{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sell='" + sell + '\'' +
                ", rentout='" + rentout + '\'' +
                ", xuhao='" + xuhao + '\'' +
                ", createdate='" + createdate + '\'' +
                '}';
    }
}
