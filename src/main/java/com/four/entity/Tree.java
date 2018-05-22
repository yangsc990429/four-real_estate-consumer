package com.four.entity;

import java.io.Serializable;
import java.util.List;

public class Tree implements Serializable{

    private static final long serialVersionUID = 9088414277935772350L;
    private Integer id;
    private String text;
    private Integer pid;
    private String url;
    private Integer ids;

    private List<Tree> Nodes;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getIds() {
        return ids;
    }

    public void setIds(Integer ids) {
        this.ids = ids;
    }

    public List<Tree> getNodes() {
        return Nodes;
    }

    public void setNodes(List<Tree> nodes) {
        Nodes = nodes;
    }

    @Override
    public String toString() {
        return "Tree{" +
                "id=" + id +
                ", text='" + text + '\'' +
                ", pid=" + pid +
                ", url='" + url + '\'' +
                ", ids=" + ids +
                ", Nodes=" + Nodes +
                '}';
    }
}
