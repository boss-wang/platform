package com.chao.platform.controller;

import com.chao.platform.entity.Role;
import com.chao.platform.entity.UserBase;
import com.chao.platform.model.Result;
import com.chao.platform.model.ResultEnum;
import com.chao.platform.service.UserService;
import com.chao.platform.util.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
public class UserController {

    @Autowired
    private UserService userService;

    //用户登录
    @GetMapping (value = "/login")
    @ResponseBody
    public Result login(HttpServletRequest req,
                        @RequestParam(value = "userName",required = true) String userName,
                        @RequestParam(value = "password",required = true) String password)
    {
        UserBase userFind = userService.findUser(userName );
        //没有找到用户
        if (userFind==null)
        {
            return ResultUtil.saveResult(ResultEnum.NO_RESULT);
        }
        if (!password.equals(userFind.getUserpwd()))
        {
            //密码错误
            return ResultUtil.saveResult(ResultEnum.PWD_ERROR);
        }
        //登录成功
        if (userFind.getUserstatus() == 1)
        {
            req.getSession().setAttribute("isLogin","true");
            req.getSession().setAttribute("userId",userFind.getUserid());
            return ResultUtil.saveResult(ResultEnum.SUCCESS);
        }
        return ResultUtil.saveResult(ResultEnum.FREEZE_ERROR);
    }

    @PostMapping (value = "/addUser.do")
    public Result addUser(UserBase user)
    {
        if (userService.addUser(user))
        {
            return ResultUtil.saveResult(ResultEnum.SUCCESS);
        }
        return ResultUtil.saveResult(ResultEnum.UNKNOW_ERROR);
    }

    /**
     * 用于添加员工前，确认账号不存在
     * @param useraccount
     * @return
     */
    @RequestMapping (value = "/existAccount.do")
    public Result existAccount(String useraccount)
    {
        UserBase userFind = userService.findUser(useraccount);

        if(userFind==null)
        {
            return ResultUtil.saveResult(ResultEnum.NO_RESULT);
        }

        return ResultUtil.saveResult(ResultEnum.SUCCESS);
    }

    @PostMapping ("/showAllUsers.do")
    public Result showAllUsers(Integer currentPage, Integer pageSize)
    {
        currentPage = currentPage==null || currentPage<1?1:currentPage;
        pageSize = pageSize==null?6:pageSize;
        List<UserBase> userList = userService.findAllUsers(currentPage,pageSize);
        if (userList == null || userList.size() == 0)
        {
            return ResultUtil.saveResult(ResultEnum.NO_RESULT);
        }
        return ResultUtil.saveResult(ResultEnum.SUCCESS,userList);
    }

    @GetMapping ("/getUserInfo")
    public Result findUserById(String userid)
    {
        UserBase userFind = userService.findUserById(userid);
        if(userFind==null)
        {
            return ResultUtil.saveResult(ResultEnum.NO_RESULT);
        }
        return ResultUtil.saveResult(ResultEnum.SUCCESS,userFind);
    }

    @GetMapping ("/userCount.do")
    public Result userCount()
    {
        Integer cnt = userService.userCount();
        return ResultUtil.saveResult(ResultEnum.SUCCESS,cnt);
    }

    @DeleteMapping ("/userInfo")
    public Result deleteUser(String userid)
    {
        if (userService.deleteUser(userid))
        {
            return ResultUtil.saveResult(ResultEnum.SUCCESS);
        }

        return ResultUtil.saveResult(ResultEnum.UNKNOW_ERROR);
    }

    @GetMapping ("/getAllRole")
    public Result findAllRole()
    {
        List<Role> roleList = userService.findAllRole();

        if (roleList==null)
        {
            return ResultUtil.saveResult(ResultEnum.NO_RESULT);
        }

        if (roleList.size()>0)
        {
            return ResultUtil.saveResult(ResultEnum.SUCCESS,roleList);
        }

        return ResultUtil.saveResult(ResultEnum.UNKNOW_ERROR);
    }
}
