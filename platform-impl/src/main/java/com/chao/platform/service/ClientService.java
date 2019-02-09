package com.chao.platform.service;

import com.chao.platform.atom.ClientAtom;
import com.chao.platform.atom.ClientContactAtom;
import com.chao.platform.entity.ClientBase;
import com.chao.platform.entity.ClientContact;
import com.chao.platform.model.CommonRsp;
import com.chao.platform.model.ListRsp;
import com.chao.platform.model.ResultEnum;
import com.chao.platform.util.PageUtil;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Service
public class ClientService
{
    @Resource
    private ClientAtom clientAtom;

    @Resource
    private ClientContactAtom clientContactAtom;

    public ListRsp getClientList(Integer currentPage, Integer pageSize)
    {

        Map<String, Integer> pageMap = PageUtil.transformLimit(currentPage, pageSize);

        List<ClientBase> clientList = clientAtom.getClientList(pageMap.get("startRow"), pageMap.get("pageSize"));

        Integer totalCount = clientAtom.clientCount();

        if (CollectionUtils.isEmpty(clientList))
        {
            return new ListRsp(ResultEnum.NO_RESULT, totalCount);
        }

        return new ListRsp(ResultEnum.SUCCESS, clientList, totalCount);
    }

    public CommonRsp getClient(String clientId)
    {

        ClientBase client = clientAtom.getClient(clientId);

        if (null == client)
        {
            return new CommonRsp(ResultEnum.NO_RESULT);
        }

        return new CommonRsp(ResultEnum.SUCCESS, client);
    }

    public CommonRsp addClient(ClientBase clientBase)
    {
        String clientId = UUID.randomUUID().toString().replace("-","");
        clientBase.setClientId(clientId);
        clientBase.setStatus(1);
        clientBase.setCreateTime(new Date());
        clientBase.setModifyTime(new Date());
        clientAtom.addClient(clientBase);

        return new CommonRsp(ResultEnum.SUCCESS);
    }

    public CommonRsp deleteClient(String clientId)
    {
        clientAtom.deleteClient(clientId);

        return new CommonRsp(ResultEnum.SUCCESS);
    }

    public CommonRsp getClientContact(String clientId)
    {
        List<ClientContact> clientContact = clientContactAtom.getClientContact(clientId);

        if (CollectionUtils.isEmpty(clientContact))
        {
            return new CommonRsp(ResultEnum.NO_RESULT);
        }
        return new CommonRsp(ResultEnum.SUCCESS, clientContact);
    }

    public CommonRsp deleteContactInfo(String contactId)
    {
        if (clientContactAtom.deleteContactInfo(contactId))
        {
            return new CommonRsp(ResultEnum.SUCCESS);
        };

        return new CommonRsp(ResultEnum.UNKNOW_ERROR);
    }

    public CommonRsp addContactInfo(ClientContact clientContact)
    {
        if (StringUtils.isEmpty(clientContact.getName()))
        {
            return new CommonRsp(ResultEnum.NAME_IS_NULL);
        }


        String id = UUID.randomUUID().toString().replace("-","");
        clientContact.setId(id);
        clientContact.setStatus(1);

        clientContactAtom.addContactInfo(clientContact);

        return new CommonRsp(ResultEnum.SUCCESS);
    }
}
