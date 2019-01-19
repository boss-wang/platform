package com.chao.platform.util;


import com.chao.platform.model.Result;
import com.chao.platform.model.ResultEnum;

public class ResultUtil {
    //保存结果
    public static Result saveResult(ResultEnum rs, Object data) {
        Result result = new Result();
        result.setCode(rs.getCode());
        result.setMessage(rs.getMsg());
        result.setData(data);
        return result;
    };
    //保存结果
    public static Result saveResult(ResultEnum rs) {
        Result result = new Result();
        result.setCode(rs.getCode());
        result.setMessage(rs.getMsg());
        result.setData(null);
        return result;
    };
}
