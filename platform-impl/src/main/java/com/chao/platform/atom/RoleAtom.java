package com.chao.platform.atom;

import com.chao.platform.dao.RoleDao;
import com.chao.platform.entity.Role;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class RoleAtom
{

    @Resource
    private RoleDao roleDao;

    public List<Role> findAllRole()
    {
        return roleDao.findAll();
    }
}
