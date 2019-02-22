package com.baizhi.bb.entity;

import java.io.Serializable;

public class VoteItem implements Serializable {
    private Integer viId;
    private Integer viUserId;
    private Integer vsId;
    private Integer voId;
    private VoteSubject voteSubject;

    public VoteItem() {
        super();
    }

    public Integer getViId() {
        return this.viId;
    }

    public VoteItem(Integer viId, Integer viUserId, Integer vsId, Integer voId,
                    VoteSubject voteSubject) {
        super();
        this.viId = viId;
        this.viUserId = viUserId;
        this.vsId = vsId;
        this.voId = voId;
        this.voteSubject = voteSubject;
    }

    public Integer getViUserId() {
        return viUserId;
    }

    public void setViUserId(Integer viUserId) {
        this.viUserId = viUserId;
    }

    public Integer getVsId() {
        return vsId;
    }

    public void setVsId(Integer vsId) {
        this.vsId = vsId;
    }

    public Integer getVoId() {
        return voId;
    }

    public void setVoId(Integer voId) {
        this.voId = voId;
    }

    public VoteSubject getVoteSubject() {
        return voteSubject;
    }

    public void setVoteSubject(VoteSubject voteSubject) {
        this.voteSubject = voteSubject;
    }

    public void setViId(Integer viId) {
        this.viId = viId;
    }

    @Override
    public String toString() {
        return "VoteItem [viId=" + viId + ", viUserId=" + viUserId + ", vsId="
                + vsId + ", voId=" + voId + ", voteSubject=" + voteSubject
                + "]";
    }


}
