package com.baizhi.bb.service;

import com.baizhi.bb.entity.VoteUser;

import java.util.List;

public interface VoteUserService {
    /**
     * 获得VoteUser数据的总行数
     *
     * @return
     */
    long getVoteUserRowCount();

    /**
     * 获得VoteUser数据集合
     *
     * @return
     */
    List<VoteUser> selectVoteUser();

    /**
     * 获得一个VoteUser对象,以参数VoteUser对象中不为空的属性作为条件进行查询
     *
     * @param obj
     * @return
     */
    VoteUser selectVoteUserByObj(VoteUser obj);

    /**
     * 通过VoteUser的id获得VoteUser对象
     *
     * @param id
     * @return
     */
    VoteUser selectVoteUserById(Integer id);

    /**
     * 插入VoteUser到数据库,包括null值
     *
     * @param value
     * @return
     */
    int insertVoteUser(VoteUser value);

    /**
     * 插入VoteUser中属性值不为null的数据到数据库
     *
     * @param value
     * @return
     */
    int insertNonEmptyVoteUser(VoteUser value);

    /**
     * 通过VoteUser的id删除VoteUser
     *
     * @param id
     * @return
     */
    int deleteVoteUserById(Integer id);

    /**
     * 通过VoteUser的id更新VoteUser中的数据,包括null值
     *
     * @param enti
     * @return
     */
    int updateVoteUserById(VoteUser enti);

    /**
     * 通过VoteUser的id更新VoteUser中属性不为null的数据
     *
     * @param enti
     * @return
     */
    int updateNonEmptyVoteUserById(VoteUser enti);
}