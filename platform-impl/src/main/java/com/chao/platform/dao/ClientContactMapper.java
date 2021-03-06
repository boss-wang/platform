package com.chao.platform.dao;

import com.chao.platform.entity.ClientContact;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClientContactMapper
{
    List<ClientContact> getClientContact(@Param("clientId") String clientId);

    int deleteContact(@Param("contactId") String contactId);

    void addContactInfo(@Param("clientContact") ClientContact clientContact);
}
