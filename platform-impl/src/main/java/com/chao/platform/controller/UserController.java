package com.chao.platform.controller;

import com.chao.platform.entity.Role;
import com.chao.platform.entity.UserBase;
import com.chao.platform.model.CommonRsp;
import com.chao.platform.model.ListRsp;
import com.chao.platform.model.ResultEnum;
import com.chao.platform.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.concurrent.TimeUnit;

@RestController
public class UserController {

    @Autowired
    private UserService userService;

    @Resource
    private RedisTemplate<String,String> redisTemplate;

    @GetMapping("/testRedis")
    public String testRedis()
    {
        ValueOperations<String, String> ops = redisTemplate.opsForValue();

        ops.set("name","yun",60, TimeUnit.SECONDS);

        return ops.get("name");

    }

    //用户登录
    @PostMapping (value = "/login")
    @ResponseBody
    public CommonRsp login(HttpServletRequest req,
                           @RequestParam(value = "userName",required = true) String userName,
                           @RequestParam(value = "password",required = true) String password)
    {
        UserBase userFind = userService.findUser(userName);
        //没有找到用户
        if (userFind == null)
        {
            return new CommonRsp(ResultEnum.NO_RESULT);
        }

        //密码错误
        if (!password.equals(userFind.getUserpwd()))
        {
            return new CommonRsp(ResultEnum.PWD_ERROR);
        }

        //登录成功
        if (userFind.getUserstatus() == 1)
        {
            return new CommonRsp(ResultEnum.SUCCESS,userFind.getUserid());
        }

        return new CommonRsp(ResultEnum.FREEZE_ERROR);
    }

    @PutMapping (value = "/userInfo")
    public CommonRsp addUser(UserBase user)
    {
        UserBase userFind = userService.findUser(user.getUseraccount());

        if(userFind != null)
        {
            return new CommonRsp(ResultEnum.ACCOUNT_EXISTS);
        }

        userService.addUser(user);

        return new CommonRsp(ResultEnum.SUCCESS);
    }

    @GetMapping ("/userInfoList")
    public CommonRsp showUserList(Integer currentPage, Integer pageSize)
    {
        currentPage = currentPage==null || currentPage < 1 ? 1 : currentPage;

        pageSize = pageSize == null ? 6 : pageSize;

        List<UserBase> userList = userService.findAllUsers(currentPage,pageSize);

        Integer totalCount = userService.userCount();

        if (userList == null || userList.size() == 0)
        {
            return new ListRsp(ResultEnum.NO_RESULT, totalCount);
        }

        return new ListRsp(ResultEnum.SUCCESS, userList, totalCount);

    }

    @GetMapping ("/userInfo")
    public CommonRsp findUserById(String userid)
    {
        UserBase userFind = userService.findUserById(userid);

        if(userFind == null)
        {
            return new CommonRsp(ResultEnum.NO_RESULT);
        }

        return new CommonRsp(ResultEnum.SUCCESS, userFind);
    }

    @DeleteMapping ("/userInfo")
    public CommonRsp deleteUser(String userid)
    {
        if (userService.deleteUser(userid))
        {
            return new CommonRsp(ResultEnum.SUCCESS);
        }

        return new CommonRsp(ResultEnum.UNKNOW_ERROR);

    }

    @GetMapping ("/roleList")
    public CommonRsp findAllRole()
    {
        List<Role> roleList = userService.findAllRole();

        if (CollectionUtils.isEmpty(roleList))
        {
            return new CommonRsp(ResultEnum.NO_RESULT);
        }

        return new CommonRsp(ResultEnum.SUCCESS, roleList);

    }
}
