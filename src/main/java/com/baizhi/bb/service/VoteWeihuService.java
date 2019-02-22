package com.baizhi.bb.service;

import com.baizhi.bb.entity.VoteWeihu;

import java.util.List;

public interface VoteWeihuService {
    List<VoteWeihu> showAll(Integer start, Integer end);

    void delete(Integer id);

    Integer getCount();
}
