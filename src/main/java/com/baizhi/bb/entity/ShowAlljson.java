package com.baizhi.bb.entity;

public class ShowAlljson {

    private String title;
    private Integer viId;
    private Integer count;
    private Integer people;

    public ShowAlljson(String title, Integer viId, Integer count, Integer people) {
        super();
        this.title = title;
        this.viId = viId;
        this.count = count;
        this.people = people;
    }

    public ShowAlljson() {
        super();
        // TODO Auto-generated constructor stub
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getViId() {
        return viId;
    }

    public void setViId(Integer viId) {
        this.viId = viId;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Integer getPeople() {
        return people;
    }

    public void setPeople(Integer people) {
        this.people = people;
    }

    @Override
    public String toString() {
        return "ShowAlljson [title=" + title + ", viId=" + viId + ", count="
                + count + ", people=" + people + "]";
    }

}
