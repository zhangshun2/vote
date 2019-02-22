package com.baizhi.bb.service.impl;

import com.baizhi.bb.dao.VoteItemDao;
import com.baizhi.bb.entity.VoteItem;
import com.baizhi.bb.service.VoteItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class VoteItemServiceImpl implements VoteItemService {
    @Autowired
    private VoteItemDao voteItemDao;

    @Override
    public long getVoteItemRowCount() {
        return voteItemDao.getVoteItemRowCount();
    }

    @Override
    public List<VoteItem> selectVoteItem() {
        return voteItemDao.selectVoteItem();
    }

    @Override
    public VoteItem selectVoteItemByObj(VoteItem obj) {
        return voteItemDao.selectVoteItemByObj(obj);
    }

    @Override
    public VoteItem selectVoteItemById(Integer id) {
        return voteItemDao.selectVoteItemById(id);
    }

    @Override
    public int insertVoteItem(VoteItem value) {
        return voteItemDao.insertVoteItem(value);
    }

    @Override
    public int insertNonEmptyVoteItem(VoteItem value) {
        return voteItemDao.insertNonEmptyVoteItem(value);
    }

    @Override
    public int deleteVoteItemById(Integer id) {
        return voteItemDao.deleteVoteItemById(id);
    }

    @Override
    public int updateVoteItemById(VoteItem enti) {
        return voteItemDao.updateVoteItemById(enti);
    }

    @Override
    public int updateNonEmptyVoteItemById(VoteItem enti) {
        return voteItemDao.updateNonEmptyVoteItemById(enti);
    }

    public VoteItemDao getVoteItemDao() {
        return this.voteItemDao;
    }

    public void setVoteItemDao(VoteItemDao voteItemDao) {
        this.voteItemDao = voteItemDao;
    }

}