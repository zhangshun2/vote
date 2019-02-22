package com.baizhi.bb.controller;

import com.baizhi.bb.entity.VoteWeihu;
import com.baizhi.bb.service.VoteWeihuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/weihu")
public class WeihuController {
    @Autowired
    private VoteWeihuService voteWeihuService;

    @RequestMapping("showAll")
    @ResponseBody
    public Object showAll(Integer page, Integer rows) {
        Integer start = (page - 1) * rows;
        Integer end = page * rows;
        List<VoteWeihu> list = voteWeihuService.showAll(start, end);
        Integer count = voteWeihuService.getCount();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("total", count);
        map.put("rows", list);
        for (VoteWeihu i : list) {
            if (i.getOptionNum() == null) {
                i.setOptionNum(0);
            }
            if (i.getToupiaoNum() == null) {
                i.setToupiaoNum(0);
            }
        }
        return map;
    }

    @RequestMapping("delete")
    @ResponseBody
    public Object delete(Integer id) {
        voteWeihuService.delete(id);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("msg", "删除成功");
        return map;
    }
}
