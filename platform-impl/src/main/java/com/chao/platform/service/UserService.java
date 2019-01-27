package com.chao.platform.service;

import com.chao.platform.atom.RoleAtom;
import com.chao.platform.atom.UserAtom;
import com.chao.platform.entity.Role;
import com.chao.platform.entity.UserBase;
import com.chao.platform.model.ListRsp;
import com.chao.platform.model.ResultEnum;
import com.chao.platform.util.PageUtil;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

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

    public ListRsp findAllUsers(Integer currentPage, Integer pageSize)
    {
        Map<String, Integer> pageMap = PageUtil.transformLimit(currentPage, pageSize);

        List<UserBase> userList = userAtom.findAllUsers(pageMap.get("startRow"), pageMap.get("pageSize"));

        Integer totalCount = userAtom.userCount();

        if (CollectionUtils.isEmpty(userList))
        {
            return new ListRsp(ResultEnum.NO_RESULT, totalCount);
        }

        return new ListRsp(ResultEnum.SUCCESS, userList, totalCount);
    }

    public UserBase findUserById(String userid)
    {
        return userAtom.findUserById(userid);
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
