package com.baizhi.bb.dao;

import com.baizhi.bb.entity.VoteItem;

import java.util.List;

public interface VoteItemDao {
    /**
     * 鑾峰緱VoteItem鏁版嵁鐨勬�琛屾暟
     *
     * @return
     */
    long getVoteItemRowCount();

    /**
     * 鑾峰緱VoteItem鏁版嵁闆嗗悎
     *
     * @return
     */

    List<VoteItem> selectVoteItem();

    /**
     * 鑾峰緱涓�釜VoteItem瀵硅薄,浠ュ弬鏁癡oteItem瀵硅薄涓笉涓虹┖鐨勫睘鎬т綔涓烘潯浠惰繘琛屾煡璇�
     *
     * @param obj
     * @return
     */
    VoteItem selectVoteItemByObj(VoteItem obj);

    /**
     * 閫氳繃VoteItem鐨刬d鑾峰緱VoteItem瀵硅薄
     *
     * @param id
     * @return
     */
    VoteItem selectVoteItemById(Integer id);

    /**
     * 鎻掑叆VoteItem鍒版暟鎹簱,鍖呮嫭null鍊�
     *
     * @param value
     * @return
     */
    int insertVoteItem(VoteItem value);

    /**
     * 鎻掑叆VoteItem涓睘鎬у�涓嶄负null鐨勬暟鎹埌鏁版嵁搴�
     *
     * @param value
     * @return
     */
    int insertNonEmptyVoteItem(VoteItem value);

    /**
     * 閫氳繃VoteItem鐨刬d鍒犻櫎VoteItem
     *
     * @param id
     * @return
     */
    int deleteVoteItemById(Integer id);

    /**
     * 閫氳繃VoteItem鐨刬d鏇存柊VoteItem涓殑鏁版嵁,鍖呮嫭null鍊�
     *
     * @param enti
     * @return
     */
    int updateVoteItemById(VoteItem enti);

    /**
     * 閫氳繃VoteItem鐨刬d鏇存柊VoteItem涓睘鎬т笉涓簄ull鐨勬暟鎹�
     *
     * @param enti
     * @return
     */
    int updateNonEmptyVoteItemById(VoteItem enti);
}