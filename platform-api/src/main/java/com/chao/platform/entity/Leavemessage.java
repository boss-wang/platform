package com.chao.platform.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Leavemessage{
private int id;
private String name;
private String phoneNum;
private String message;
private String messageTime;
private int status;

}