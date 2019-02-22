package com.baizhi.bb.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class VoteWeihu {
    private Integer id;
    private String title;
    private Integer toupiaoNum;
    private Integer optionNum;
}
