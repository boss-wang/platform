package com.chao.platform.atom;

import com.chao.platform.dao.ClientContactMapper;
import com.chao.platform.dao.ClientMapper;
import com.chao.platform.entity.ClientBase;
import com.chao.platform.entity.ClientContact;
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

    @Resource
    private ClientContactMapper clientContactMapper;

    public List<ClientBase> getClientList(Integer startRow, Integer pageSize)
    {
        return clientMapper.getClientList(startRow, pageSize);
    }

    public int clientCount()
    {
        return clientMapper.clientCount();
    }

    public ClientBase getClient(String clientId)
    {
        ClientBase clientBase = clientMapper.getClient(clientId);

        if (null ==  clientBase)
        {
            return null;
        }

        List<ClientContact> clientContactList = clientContactMapper.getClientContact(clientId);

        clientBase.setClientContactList(clientContactList);

        return clientBase;
    }

    public void addClient(ClientBase clientBase)
    {
        clientMapper.addClient(clientBase);
    }

    public void deleteClient(String clientId)
    {
        clientMapper.deleteClient(clientId);
    }
}
