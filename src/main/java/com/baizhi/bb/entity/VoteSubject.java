package com.baizhi.bb.entity;

import java.io.Serializable;
import java.util.List;

public class VoteSubject implements Serializable {
    private Integer vsId;
    private String vsTitle;
    private Integer vsType;
    private List<VoteItem> voteItem;
    private List<VoteOption> voteOptions;

    public VoteSubject() {
        super();
    }

    public VoteSubject(Integer vsId, String vsTitle, Integer vsType,
                       List<VoteItem> voteItem, List<VoteOption> voteOptions) {
        super();
        this.vsId = vsId;
        this.vsTitle = vsTitle;
        this.vsType = vsType;
        this.voteItem = voteItem;
        this.voteOptions = voteOptions;
    }

    public Integer getVsId() {
        return vsId;
    }

    public void setVsId(Integer vsId) {
        this.vsId = vsId;
    }

    public String getVsTitle() {
        return vsTitle;
    }

    public void setVsTitle(String vsTitle) {
        this.vsTitle = vsTitle;
    }

    public Integer getVsType() {
        return vsType;
    }

    public void setVsType(Integer vsType) {
        this.vsType = vsType;
    }

    public List<VoteItem> getVoteItem() {
        return voteItem;
    }

    public void setVoteItem(List<VoteItem> voteItem) {
        this.voteItem = voteItem;
    }

    public List<VoteOption> getVoteOptions() {
        return voteOptions;
    }

    public void setVoteOptions(List<VoteOption> voteOptions) {
        this.voteOptions = voteOptions;
    }

    @Override
    public String toString() {
        return "VoteSubject [vsId=" + vsId + ", vsTitle=" + vsTitle
                + ", vsType=" + vsType + ", voteItem=" + voteItem
                + ", voteOptions=" + voteOptions + "]";
    }


}
