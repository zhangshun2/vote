package com.baizhi.bb.service.impl;

import com.baizhi.bb.dao.VoteOptionDao;
import com.baizhi.bb.entity.VoteOption;
import com.baizhi.bb.service.VoteOptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class VoteOptionServiceImpl implements VoteOptionService {
    @Autowired
    private VoteOptionDao voteOptionDao;

    @Override
    public long getVoteOptionRowCount() {
        return voteOptionDao.getVoteOptionRowCount();
    }

    @Override
    public List<VoteOption> selectVoteOption() {
        return voteOptionDao.selectVoteOption();
    }

    @Override
    public VoteOption selectVoteOptionByObj(VoteOption obj) {
        return voteOptionDao.selectVoteOptionByObj(obj);
    }

    @Override
    public VoteOption selectVoteOptionById(Integer id) {
        return voteOptionDao.selectVoteOptionById(id);
    }

    @Override
    public int insertVoteOption(VoteOption value) {
        return voteOptionDao.insertVoteOption(value);
    }

    @Override
    public int insertNonEmptyVoteOption(VoteOption value) {
        return voteOptionDao.insertNonEmptyVoteOption(value);
    }

    @Override
    public int deleteVoteOptionById(Integer id) {
        return voteOptionDao.deleteVoteOptionById(id);
    }

    @Override
    public int updateVoteOptionById(VoteOption enti) {
        return voteOptionDao.updateVoteOptionById(enti);
    }

    @Override
    public int updateNonEmptyVoteOptionById(VoteOption enti) {
        return voteOptionDao.updateNonEmptyVoteOptionById(enti);
    }

    public VoteOptionDao getVoteOptionDao() {
        return this.voteOptionDao;
    }

    public void setVoteOptionDao(VoteOptionDao voteOptionDao) {
        this.voteOptionDao = voteOptionDao;
    }

}