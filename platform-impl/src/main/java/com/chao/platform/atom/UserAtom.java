package com.chao.platform.atom;

import com.chao.platform.dao.UserDao;
import com.chao.platform.dao.UserMapper;
import com.chao.platform.entity.UserBase;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class UserAtom
{
    @Resource
    private UserDao userDao;

    @Resource
    private UserMapper userMapper;

    public UserBase findUser(String userAccount)
    {
        return userDao.findByUseraccount(userAccount);
    }

    public Boolean addUser(UserBase userBase)
    {
        if(userDao.save(userBase)!=null)
        {
            return true;
        };
        return false;
    }

    public List<UserBase> findAllUsers(Integer startRow,Integer pageSize)
    {
        return userMapper.findAllUsers(startRow,pageSize);
    }

    public UserBase findUserById(String userid)
    {
        return userMapper.findUserById(userid);
    }

    public Integer userCount()
    {
        return userMapper.userCount();
    }

    public Boolean deleteUser(String userid) {
        return userMapper.deleteUser(userid) > 0;
    }
}
