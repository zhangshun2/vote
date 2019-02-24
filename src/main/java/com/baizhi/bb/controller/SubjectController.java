package com.baizhi.bb.controller;

import com.baizhi.bb.entity.ShowAlljson;
import com.baizhi.bb.entity.VoteOption;
import com.baizhi.bb.entity.VoteSubject;
import com.baizhi.bb.entity.voteSubDTO;
import com.baizhi.bb.service.VoteOptionService;
import com.baizhi.bb.service.VoteSubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Controller
@RequestMapping("/subject")
public class SubjectController {

    @Autowired
    private VoteSubjectService voteSubjectService;
    @Autowired
    private VoteOptionService voteOptionService;


    @RequestMapping("showone")
    @ResponseBody
    public Object showone(Integer id) {
        return voteSubjectService.selectVoteSubjectById(id);
    }


    @RequestMapping("showall")
    @ResponseBody
    public Object showall() {
        List<VoteSubject> list = voteSubjectService.selectVoteSubject2();
        ArrayList<Object> shoalllist = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {

            HashSet<Object> set = new HashSet<>();
            HashSet<Object> set2 = new HashSet<>();
            for (int j = 0; j < list.get(i).getVoteItem().size(); j++) {
                set.add(list.get(i).getVoteItem().get(j).getViUserId());

            }
            for (int j = 0; j < list.get(i).getVoteOptions().size(); j++) {
                set2.add(list.get(i).getVoteOptions().get(j).getVoOption());
            }
            int size = set.size();
            int size2 = set2.size();

            System.out.println("==========1===========");
            System.out.println(size);
            System.out.println(size2);
            System.out.println("=====================");


            VoteSubject subject = list.get(i);
            ShowAlljson alljson = new ShowAlljson(subject.getVsTitle(), subject.getVsId(), size2, size);
            shoalllist.add(alljson);
        }

        return shoalllist;
    }

    @RequestMapping("add")
    @ResponseBody
    public Object add(voteSubDTO voteSubDTO, VoteSubject subject) {
        List<VoteOption> options = voteSubDTO.getOptions();
        System.out.println("=====================");
        System.out.println(options);
        System.out.println(subject);
        System.out.println("=====================");

        Map<String, Object> map = new HashMap<>();
        if (subject == null || subject.getVsTitle().equals("") || voteSubDTO.getOptions() == null) {
            map.put("no", "param is null");
        } else {

            voteSubjectService.insertNonEmptyVoteSubject(subject);

            VoteSubject subject2 = voteSubjectService.selectVoteSubjectByObj(subject);

            Integer vsId = subject2.getVsId();


            if (options == null) {

                map.put("yes", "insert subject ok");

            } else {


                for (VoteOption option : options) {
                    /**
                     * ���ܴ��ڿ�Ƚ϶൫��û��ӵ����
                     * ���Զ�����Щ�п�ûд���ݵ���������в���
                     */
                    if (option.getVoOption() != null) {
                        /**
                         * ÿһ��ͶƱѡ��Ŀ���������ֵ
                         * Ĭ����0��ɾ��ѡ����
                         * ��ʾ˳����̫�鷳��������,��Ե
                         */
                        option.setVoIsDelete("0");
                        option.setVoOrder("");
                        /**
                         * ��ͶƱ���ݺ�ͶƱ��ѡ��
                         */
                        option.setVsId(vsId);
                        /**
                         * ��������֮ǰ��voteoption����
                         */
                        voteOptionService.insertNonEmptyVoteOption(option);
                    }
                }


                map.put("yes", "insert subject options ok");
            }


        }


        return map;
    }

}
