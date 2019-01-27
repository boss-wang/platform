package com.chao.platform.atom;

import com.chao.platform.dao.ClientMapper;
import com.chao.platform.entity.ClientBase;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class ClientAtom
{
    @Resource
    private ClientMapper clientMapper;

    public List<ClientBase> getClientList(Integer startRow, Integer pageSize)
    {
        return clientMapper.getClientList(startRow, pageSize);
    }

    public int clientCount()
    {
        return clientMapper.clientCount();
    }

}
