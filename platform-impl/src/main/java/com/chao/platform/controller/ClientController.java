package com.chao.platform.controller;

import com.chao.platform.entity.ClientBase;
import com.chao.platform.entity.ClientContact;
import com.chao.platform.model.CommonRsp;
import com.chao.platform.model.ListRsp;
import com.chao.platform.service.ClientService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@RestController
public class ClientController
{
    @Resource
    private ClientService clientService;

    @GetMapping("/clientInfoList")
    public ListRsp findClientInfos(Integer currentPage, Integer pageSize)
    {
        return clientService.getClientList(currentPage, pageSize);
    }

    @GetMapping("/clientInfo/{clientId}")
    public CommonRsp findClientInfos(@PathVariable("clientId") String clientId)
    {
        return clientService.getClient(clientId);
    }

    @DeleteMapping("/client/contactInfo/{contactId}")
    public CommonRsp deleteClientContactInfo(@PathVariable("contactId") String contactId)
    {
        return clientService.deleteContactInfo(contactId);
    }

    @PostMapping("/clientInfo")
    public CommonRsp addClientInfo(ClientBase clientReq)
    {
        return clientService.addClient(clientReq);
    }

    @DeleteMapping("/clientInfo/{clientId}")
    public CommonRsp deleteClientInfo(@PathVariable("clientId") String clientId)
    {
        return clientService.deleteClient(clientId);
    }

    @PostMapping("/client/contactInfo")
    public CommonRsp addClientContactInfo(ClientContact clientContact)
    {
        return clientService.addContactInfo(clientContact);
    }
}
