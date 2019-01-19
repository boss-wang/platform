package com.chao.platform.service;

import com.chao.platform.atom.RoleAtom;
import com.chao.platform.atom.UserAtom;
import com.chao.platform.entity.Role;
import com.chao.platform.entity.UserBase;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserService
{
    @Resource
    private UserAtom userAtom;

    @Resource
    private RoleAtom roleAtom;

    public UserBase findUser(String userAccount)
    {
        return userAtom.findUser(userAccount);
    }

    public Boolean addUser(UserBase userBase)
    {
        return userAtom.addUser(userBase);
    }

    public List<UserBase> findAllUsers(Integer currentPage, Integer pageSize)
    {
        Integer startRow = (currentPage-1)*pageSize;
        return userAtom.findAllUsers(startRow, pageSize);
    }

    public UserBase findUserById(String userid)
    {
        return userAtom.findUserById(userid);
    }

    public Integer userCount() {
        return userAtom.userCount();
    }

    public Boolean deleteUser(String userid)
    {
        return userAtom.deleteUser(userid);
    }

    public List<Role> findAllRole()
    {
        return roleAtom.findAllRole();
    }
}
