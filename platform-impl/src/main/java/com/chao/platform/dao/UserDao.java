package com.chao.platform.dao;

import com.chao.dtw.entity.UserBase;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.jpa.repository.JpaRepository;

@Mapper
public interface UserDao extends JpaRepository<UserBase,String>{
    /**
     * 根据账号查找用户信息
     */
    public UserBase findByUseraccount(String userAccount);

}
