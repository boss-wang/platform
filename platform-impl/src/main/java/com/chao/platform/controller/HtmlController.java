package com.chao.platform.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HtmlController {
    //跳转登录
    @RequestMapping(value = "/login")
    public String login(){
        return "admin/login";
    }
    //跳转主页
    @RequestMapping(value = "/home")
    public String goHome(){
        return "admin/home";
    }
    //跳转添加员工页面
    @RequestMapping(value = "/goAddUser")
    public String goAddUser(){
        return "admin/addUser";
    }
    //跳转查看员工页面
    @RequestMapping(value = "/goShowUsers")
    public String goShowUsers(){
        return "admin/showUsers";
    }

    //跳转修改员工页面
    @PostMapping(value = "goUpdateUser")
    public String goUpdateUsers(String userid, Model mv){
        mv.addAttribute("userid",userid);
        return "admin/updateUser";
    }
}
