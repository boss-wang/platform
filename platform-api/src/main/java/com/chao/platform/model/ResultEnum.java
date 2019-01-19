package com.chao.platform.model;

public enum ResultEnum {
    SUCCESS(0,"成功"),
    NO_RESULT(1,"没有找到内容"),
    PWD_ERROR(2,"密码错误"),
    UNKNOW_ERROR(-1,"未知错误"),
    FREEZE_ERROR(3,"账号冻结")
    ;

    ResultEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    private Integer code;

    private String msg;

    public Integer getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }
}
