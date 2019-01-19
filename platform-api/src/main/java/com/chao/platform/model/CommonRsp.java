package com.chao.platform.model;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@ToString
public class CommonRsp<T> {
    //结果代码
    private Integer code;
    //结果提示
    private String message;
    //结果内容
    private T data;

    public CommonRsp() { }


    public CommonRsp(ResultEnum rs)
    {
        this.code = rs.getCode();
        this.message = rs.getMsg();
    }

    public CommonRsp(ResultEnum rs, T data)
    {
        this.code = rs.getCode();
        this.message = rs.getMsg();
        this.data = data;
    }
}
