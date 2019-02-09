package com.chao.platform.dao;

import com.chao.platform.entity.ClientBase;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClientMapper
{
    List<ClientBase> getClientList(@Param("startRow") Integer startRow, @Param("pageSize") Integer pageSize);

    int clientCount();

    ClientBase getClient(@Param("clientId") String clientId);

    void addClient(@Param("clientBase") ClientBase clientBase);

    void deleteClient(@Param("clientId") String clientId);
}
