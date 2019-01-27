package com.chao.platform.controller;

import com.chao.platform.model.ListRsp;
import com.chao.platform.service.ClientService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

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
}
