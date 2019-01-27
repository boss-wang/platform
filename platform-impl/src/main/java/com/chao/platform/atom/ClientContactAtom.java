package com.chao.platform.atom;

import com.chao.platform.dao.ClientContactMapper;
import com.chao.platform.entity.ClientContact;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Transactional
@Service
public class ClientContactAtom
{
    @Resource
    private ClientContactMapper clientContactMapper;

    public List<ClientContact> getClientContact(String clientId)
    {
        return clientContactMapper.getClientContact(clientId);
    }
}
