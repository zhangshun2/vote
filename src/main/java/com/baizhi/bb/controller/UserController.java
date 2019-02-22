package com.baizhi.bb.controller;

import com.baizhi.bb.entity.VoteUser;
import com.baizhi.bb.service.VoteUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    
    @Autowired
    private VoteUserService voteUserService;

    @RequestMapping("login")
    @ResponseBody
    public Object login(VoteUser voteUser, HttpSession session) {
        Map<String, Object> map = new HashMap<>();

        if (voteUser == null) {

            map.put("key", "no");
        } else {
            VoteUser user = voteUserService.selectVoteUserByObj(voteUser);
            System.out.println("voteUser" + voteUser);
            System.out.println("user" + user);
            if (user.getVuPassword().equals(voteUser.getVuPassword())) {
                session.setAttribute("user", user);
                map.put("key", "yes");

            } else {
                map.put("key", "no");
            }

        }

        return map;
    }

    @RequestMapping("regist")
    @ResponseBody
    public Object regist(VoteUser user) {
        Map<String, Object> map = new HashMap<>();
        if (user == null) {
            map.put("key", "no");
        } else {
            if (user.getVuUserName() == "" && user.getVuPassword() == "") {
                map.put("key", "no");
                return map;
            }
            int i = voteUserService.insertNonEmptyVoteUser(user);
            System.out.println(user);
            System.out.println(i);
            map.put("key", "yes");
        }
        return map;
    }
}
