package com.chao.platform.model;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@ToString
public class Result<T> {
    //结果代码
    private Integer code;
    //结果提示
    private String message;
    //结果内容
    private T data;
}
