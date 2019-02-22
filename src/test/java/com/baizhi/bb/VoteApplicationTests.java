package com.baizhi.bb;

import com.baizhi.bb.dao.VoteSubjectDao;
import com.baizhi.bb.dao.VoteUserDao;
import com.baizhi.bb.service.VoteSubjectService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class VoteApplicationTests {
    @Autowired
    private VoteUserDao voteUserDao;
    @Autowired
    private VoteSubjectDao voteSubjectDao;
    @Autowired
    private VoteSubjectService voteSubjectService;

    @Test
    public void contextLoads() {
        System.out.println(voteSubjectService.selectVoteSubject());
    }


}
