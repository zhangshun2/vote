package com.baizhi.bb.service.impl;

import com.baizhi.bb.dao.VoteUserDao;
import com.baizhi.bb.entity.VoteUser;
import com.baizhi.bb.service.VoteUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class VoteUserServiceImpl implements VoteUserService {
    @Autowired
    private VoteUserDao voteUserDao;

    @Override
    public long getVoteUserRowCount() {
        return voteUserDao.getVoteUserRowCount();
    }

    @Override
    public List<VoteUser> selectVoteUser() {
        return voteUserDao.selectVoteUser();
    }

    @Override
    public VoteUser selectVoteUserByObj(VoteUser obj) {
        return voteUserDao.selectVoteUserByObj(obj);
    }

    @Override
    public VoteUser selectVoteUserById(Integer id) {
        return voteUserDao.selectVoteUserById(id);
    }

    @Override
    public int insertVoteUser(VoteUser value) {
        return voteUserDao.insertVoteUser(value);
    }

    @Override
    public int insertNonEmptyVoteUser(VoteUser value) {
        return voteUserDao.insertNonEmptyVoteUser(value);
    }

    @Override
    public int deleteVoteUserById(Integer id) {
        return voteUserDao.deleteVoteUserById(id);
    }

    @Override
    public int updateVoteUserById(VoteUser enti) {
        return voteUserDao.updateVoteUserById(enti);
    }

    @Override
    public int updateNonEmptyVoteUserById(VoteUser enti) {
        return voteUserDao.updateNonEmptyVoteUserById(enti);
    }

    public VoteUserDao getVoteUserDao() {
        return this.voteUserDao;
    }

    public void setVoteUserDao(VoteUserDao voteUserDao) {
        this.voteUserDao = voteUserDao;
    }

}