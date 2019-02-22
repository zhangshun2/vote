package com.baizhi.bb.controller;

import com.baizhi.bb.entity.VoteItem;
import com.baizhi.bb.service.VoteItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/item")
public class ItemController {

    @Autowired
    private VoteItemService voteItemService;

    @RequestMapping("add")
    @ResponseBody
    public Object add(VoteItem voteItem) {
        Map<String, Object> map = new HashMap<>();

        if (voteItem == null) {
            map.put("key", "yes");
        } else {
            map.put("key", "no");
        }

        return map;
    }
}
