package com.chao.platform.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Customer{
private int id;
private String loginName;
private String loginPwd;
private String tel;
private String email;
private int statusId;
private String realName;

}