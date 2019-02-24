package com.baizhi.bb.dao;

import com.baizhi.bb.entity.VoteWeihu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VoteWeihuDao {
    //展示所有信息
    public List<VoteWeihu> selectAll(@Param("start") Integer start, @Param("end") Integer end);

    public void deleteById(@Param("id") Integer id);

    //查询所有条数
    public Integer getCount();

    VoteWeihu selectById(@Param("id") Integer id);

    public void update();

    List<VoteWeihu> select(VoteWeihu voteWeihu);
}
