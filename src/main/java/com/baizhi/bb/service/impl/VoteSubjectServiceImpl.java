package com.baizhi.bb.service.impl;

import com.baizhi.bb.dao.VoteSubjectDao;
import com.baizhi.bb.entity.VoteSubject;
import com.baizhi.bb.service.VoteSubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class VoteSubjectServiceImpl implements VoteSubjectService {
    @Autowired
    private VoteSubjectDao voteSubjectDao;

    @Override
    public List<VoteSubject> selectVoteByName(String name) {
        return voteSubjectDao.selectVoteSubjectByName(name);
    }

    ;
    @Override
    public long getVoteSubjectRowCount() {
        return voteSubjectDao.getVoteSubjectRowCount();
    }

    @Override
    public List<VoteSubject> selectVoteSubject() {
        return voteSubjectDao.selectVoteSubject();
    }

    @Override
    public VoteSubject selectVoteSubjectByObj(VoteSubject obj) {
        return voteSubjectDao.selectVoteSubjectByObj(obj);
    }

    @Override
    public VoteSubject selectVoteSubjectById(Integer id) {
        return voteSubjectDao.selectVoteSubjectById(id);
    }

    @Override
    public int insertVoteSubject(VoteSubject value) {
        return voteSubjectDao.insertVoteSubject(value);
    }

    @Override
    public int insertNonEmptyVoteSubject(VoteSubject value) {
        return voteSubjectDao.insertNonEmptyVoteSubject(value);
    }

    @Override
    public int deleteVoteSubjectById(Integer id) {
        return voteSubjectDao.deleteVoteSubjectById(id);
    }

    @Override
    public int updateVoteSubjectById(VoteSubject enti) {
        return voteSubjectDao.updateVoteSubjectById(enti);
    }

    @Override
    public int updateNonEmptyVoteSubjectById(VoteSubject enti) {
        return voteSubjectDao.updateNonEmptyVoteSubjectById(enti);
    }

    public VoteSubjectDao getVoteSubjectDao() {
        return this.voteSubjectDao;
    }

    public void setVoteSubjectDao(VoteSubjectDao voteSubjectDao) {
        this.voteSubjectDao = voteSubjectDao;
    }

    @Override
    public List<VoteSubject> selectVoteSubject2() {
        // TODO Auto-generated method stub
        return voteSubjectDao.selectVoteSubject2();
    }

}