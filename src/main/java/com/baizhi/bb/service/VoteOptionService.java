package com.baizhi.bb.service;

import com.baizhi.bb.entity.VoteOption;

import java.util.List;

public interface VoteOptionService {
    /**
     * 获得VoteOption数据的总行数
     *
     * @return
     */
    long getVoteOptionRowCount();

    /**
     * 获得VoteOption数据集合
     *
     * @return
     */
    List<VoteOption> selectVoteOption();

    /**
     * 获得一个VoteOption对象,以参数VoteOption对象中不为空的属性作为条件进行查询
     *
     * @param obj
     * @return
     */
    VoteOption selectVoteOptionByObj(VoteOption obj);

    /**
     * 通过VoteOption的id获得VoteOption对象
     *
     * @param id
     * @return
     */
    VoteOption selectVoteOptionById(Integer id);

    /**
     * 插入VoteOption到数据库,包括null值
     *
     * @param value
     * @return
     */
    int insertVoteOption(VoteOption value);

    /**
     * 插入VoteOption中属性值不为null的数据到数据库
     *
     * @param value
     * @return
     */
    int insertNonEmptyVoteOption(VoteOption value);

    /**
     * 通过VoteOption的id删除VoteOption
     *
     * @param id
     * @return
     */
    int deleteVoteOptionById(Integer id);

    /**
     * 通过VoteOption的id更新VoteOption中的数据,包括null值
     *
     * @param enti
     * @return
     */
    int updateVoteOptionById(VoteOption enti);

    /**
     * 通过VoteOption的id更新VoteOption中属性不为null的数据
     *
     * @param enti
     * @return
     */
    int updateNonEmptyVoteOptionById(VoteOption enti);
}