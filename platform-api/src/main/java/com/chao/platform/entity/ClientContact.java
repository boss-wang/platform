package com.chao.platform.entity;

import lombok.Data;

@Data
public class ClientContact
{
    private String id;
    private String name;
    private String tel;
    private String email;
    private String qq;
    private String clientId;
    private int status;
}