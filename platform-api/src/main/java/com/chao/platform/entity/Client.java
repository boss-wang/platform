package com.chao.platform.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Client{
private int clientId;
private String clientName;
private String clientAddress;
private int clientStatus;
}