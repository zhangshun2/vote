package com.baizhi.bb.service;

import com.baizhi.bb.entity.VoteItem;

import java.util.List;

public interface VoteItemService {
    /**
     * 获得VoteItem数据的总行数
     *
     * @return
     */
    long getVoteItemRowCount();

    /**
     * 获得VoteItem数据集合
     *
     * @return
     */
    List<VoteItem> selectVoteItem();

    /**
     * 获得一个VoteItem对象,以参数VoteItem对象中不为空的属性作为条件进行查询
     *
     * @param obj
     * @return
     */
    VoteItem selectVoteItemByObj(VoteItem obj);

    /**
     * 通过VoteItem的id获得VoteItem对象
     *
     * @param id
     * @return
     */
    VoteItem selectVoteItemById(Integer id);

    /**
     * 插入VoteItem到数据库,包括null值
     *
     * @param value
     * @return
     */
    int insertVoteItem(VoteItem value);

    /**
     * 插入VoteItem中属性值不为null的数据到数据库
     *
     * @param value
     * @return
     */
    int insertNonEmptyVoteItem(VoteItem value);

    /**
     * 通过VoteItem的id删除VoteItem
     *
     * @param id
     * @return
     */
    int deleteVoteItemById(Integer id);

    /**
     * 通过VoteItem的id更新VoteItem中的数据,包括null值
     *
     * @param enti
     * @return
     */
    int updateVoteItemById(VoteItem enti);

    /**
     * 通过VoteItem的id更新VoteItem中属性不为null的数据
     *
     * @param enti
     * @return
     */
    int updateNonEmptyVoteItemById(VoteItem enti);
}