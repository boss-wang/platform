package com.chao.platform.entity;

import lombok.Data;

import java.util.Date;
import java.util.List;


@Data
public class ClientBase
{
    private String clientId;
    private String companyName;
    private String companyAddress;
    private Date createTime;
    private Date modifyTime;
    private int status;

    List<ClientContact> clientContactList;
}