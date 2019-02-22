package com.baizhi.bb.entity;

import java.io.Serializable;

public class VoteOption implements Serializable {
    private Integer voId;
    private Integer vsId;
    private String voOption;
    private String voOrder;
    private String voIsDelete;

    public VoteOption() {
        super();
    }

    public VoteOption(Integer voId, Integer vsId, String voOption, String voOrder, String voIsDelete) {
        super();
        this.voId = voId;
        this.vsId = vsId;
        this.voOption = voOption;
        this.voOrder = voOrder;
        this.voIsDelete = voIsDelete;
    }

    @Override
    public String toString() {
        return "VoteOption [voId=" + voId + ", vsId=" + vsId + ", voOption="
                + voOption + ", voOrder=" + voOrder + ", voIsDelete="
                + voIsDelete + "]";
    }

    public Integer getVoId() {
        return this.voId;
    }

    public void setVoId(Integer voId) {
        this.voId = voId;
    }

    public Integer getVsId() {
        return this.vsId;
    }

    public void setVsId(Integer vsId) {
        this.vsId = vsId;
    }

    public String getVoOption() {
        return this.voOption;
    }

    public void setVoOption(String voOption) {
        this.voOption = voOption;
    }

    public String getVoOrder() {
        return this.voOrder;
    }

    public void setVoOrder(String voOrder) {
        this.voOrder = voOrder;
    }

    public String getVoIsDelete() {
        return this.voIsDelete;
    }

    public void setVoIsDelete(String voIsDelete) {
        this.voIsDelete = voIsDelete;
    }

}
