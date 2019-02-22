package com.baizhi.bb.service.impl;

import com.baizhi.bb.dao.VoteWeihuDao;
import com.baizhi.bb.entity.VoteWeihu;
import com.baizhi.bb.service.VoteWeihuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VoteWeihuServiceImpl implements VoteWeihuService {

    @Autowired
    private VoteWeihuDao voteWeihuDao;

    @Override
    public List<VoteWeihu> showAll(Integer start, Integer end) {
        List<VoteWeihu> list = voteWeihuDao.selectAll(start, end);
        return list;
    }

    @Override
    public void delete(Integer id) {
        voteWeihuDao.deleteById(id);
    }

    @Override
    public Integer getCount() {
        Integer count = voteWeihuDao.getCount();
        return count;
    }
}
