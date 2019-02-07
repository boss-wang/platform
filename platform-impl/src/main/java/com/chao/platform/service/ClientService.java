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
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

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
}
