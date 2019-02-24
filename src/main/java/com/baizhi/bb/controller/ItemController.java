package com.baizhi.bb.controller;

import com.baizhi.bb.entity.VoteItem;
import com.baizhi.bb.entity.VoteUser;
import com.baizhi.bb.service.VoteItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/item")
public class ItemController {

    @Autowired
    private VoteItemService voteItemService;

    @RequestMapping("add")
    @ResponseBody
    public Object add(VoteItem voteItem, HttpSession httpSession, Integer[] voId) {
        VoteUser user = (VoteUser) httpSession.getAttribute("user");
        System.out.println(user);
        voteItem.setVuUserId(user.getVuUserId());
        for (Integer i :
                voId) {
            System.out.println(i);
            voteItem.setVoId(i);
            System.out.println(voteItem);
            voteItemService.insertVoteItem(voteItem);
        }

        Map<String, Object> map = new HashMap<>();

        // voteItemService.insertNonEmptyVoteItem(voteItem);

        if (voteItem == null) {
            map.put("key", "yes");
        } else {
            map.put("key", "no");
        }

        return map;
    }
}
