package com.baizhi.bb.entity;

import java.io.Serializable;
import java.util.List;

public class voteSubDTO implements Serializable {

    private List<VoteOption> options;

    public voteSubDTO() {
        super();
        // TODO Auto-generated constructor stub
    }

    public voteSubDTO(List<VoteOption> options) {
        super();
        this.options = options;

    }

    public List<VoteOption> getOptions() {
        return options;
    }

    public void setOptions(List<VoteOption> options) {
        this.options = options;
    }

    @Override
    public String toString() {
        return "voteSubDTO{" +
                "options=" + options +
                '}';

    }

}
