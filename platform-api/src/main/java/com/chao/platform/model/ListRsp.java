package com.chao.platform.model;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class ListRsp<T> extends CommonRsp
{
    //总记录数
    private int totalCount;

    public ListRsp(ResultEnum rs, T data, int totalCount)
    {
        super(rs, data);
        this.totalCount = totalCount;
    }

    public ListRsp(ResultEnum rs, int totalCount)
    {
        super(rs);
        this.totalCount = totalCount;
    }
}
