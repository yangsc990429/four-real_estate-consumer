package com.four.entity;

public class Business {

    //s商圈
    private Integer id;
    private String name;
    private String guancount;
    private String createdate;
    private String areaid;
    private String photo;
    private String textarea;

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

    public String getGuancount() {
        return guancount;
    }

    public void setGuancount(String guancount) {
        this.guancount = guancount;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public String getAreaid() {
        return areaid;
    }

    public void setAreaid(String areaid) {
        this.areaid = areaid;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getTextarea() {
        return textarea;
    }

    public void setTextarea(String textarea) {
        this.textarea = textarea;
    }


    @Override
    public String toString() {
        return "Business{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", guancount='" + guancount + '\'' +
                ", createdate='" + createdate + '\'' +
                ", areaid='" + areaid + '\'' +
                ", photo='" + photo + '\'' +
                ", textarea='" + textarea + '\'' +
                '}';
    }
}
