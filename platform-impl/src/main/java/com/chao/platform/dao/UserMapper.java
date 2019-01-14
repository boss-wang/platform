package com.chao.platform.dao;

import com.chao.platform.entity.UserBase;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    /**
     * 查询所有用户
     */
    List<UserBase> findAllUsers(@Param("startRow") Integer startRow, @Param("pageSize") Integer pageSize);
    /**
     * 根据id查询用户
     */
    UserBase findUserById(String userid);
    /**
     * 删除用户
     */
    Integer deleteUser(String userid);
    /**
     * 查询用户数量
     */
    Integer userCount();

}
