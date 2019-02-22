package com.baizhi.bb.dao;

import com.baizhi.bb.entity.VoteSubject;

import java.util.List;

public interface VoteSubjectDao {
    /**
     * 鑾峰緱VoteSubject鏁版嵁鐨勬�琛屾暟
     *
     * @return
     */
    List<VoteSubject> selectVoteSubject2();

    long getVoteSubjectRowCount();

    /**
     * 鑾峰緱VoteSubject鏁版嵁闆嗗悎
     *
     * @return
     */

    List<VoteSubject> selectVoteSubject();

    /**
     * 鑾峰緱涓�釜VoteSubject瀵硅薄,浠ュ弬鏁癡oteSubject瀵硅薄涓笉涓虹┖鐨勫睘鎬т綔涓烘潯浠惰繘琛屾煡璇�
     *
     * @param obj
     * @return
     */
    VoteSubject selectVoteSubjectByObj(VoteSubject obj);

    /**
     * 閫氳繃VoteSubject鐨刬d鑾峰緱VoteSubject瀵硅薄
     *
     * @param id
     * @return
     */
    VoteSubject selectVoteSubjectById(Integer id);

    /**
     * 鎻掑叆VoteSubject鍒版暟鎹簱,鍖呮嫭null鍊�
     *
     * @param value
     * @return
     */
    int insertVoteSubject(VoteSubject value);

    /**
     * 鎻掑叆VoteSubject涓睘鎬у�涓嶄负null鐨勬暟鎹埌鏁版嵁搴�
     *
     * @param value
     * @return
     */
    int insertNonEmptyVoteSubject(VoteSubject value);

    /**
     * 閫氳繃VoteSubject鐨刬d鍒犻櫎VoteSubject
     *
     * @param id
     * @return
     */
    int deleteVoteSubjectById(Integer id);

    /**
     * 閫氳繃VoteSubject鐨刬d鏇存柊VoteSubject涓殑鏁版嵁,鍖呮嫭null鍊�
     *
     * @param enti
     * @return
     */
    int updateVoteSubjectById(VoteSubject enti);

    /**
     * 閫氳繃VoteSubject鐨刬d鏇存柊VoteSubject涓睘鎬т笉涓簄ull鐨勬暟鎹�
     *
     * @param enti
     * @return
     */
    int updateNonEmptyVoteSubjectById(VoteSubject enti);
}