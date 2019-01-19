package com.chao.platform.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Clientcontact{
private int clientContactId;
private String clientContactName;
private String ClientContactTel;
private String ClientContactEmail;
private String ClientContactQQ;
private int clientContactStatus;

}