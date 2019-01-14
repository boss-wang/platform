package com.chao.platform.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;


@Entity@Getter
@Setter
@ToString
public class UserBase {
    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name="uuid",strategy = "uuid")
    private String userid;
    @Column
    private String useraccount;
    private String userpwd;
    private String username;
    private String usersex;
    private int userstatus;
    private String showpicpath;
    private int roleid;
    @Transient
    private String rolename;    //职位名称
}