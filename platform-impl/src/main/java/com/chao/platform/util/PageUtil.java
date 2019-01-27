package com.chao.platform.util;

import java.util.HashMap;
import java.util.Map;

public class PageUtil
{
    public static Map<String,Integer> transformLimit(Integer currentPage, Integer pageSize)
    {
        currentPage = currentPage == null || currentPage < 1 ? 1 : currentPage;

        Integer limit = pageSize == null ? 6 : pageSize;

        Integer startRow = (currentPage-1)*pageSize;

        return new HashMap<String,Integer>(){{
           put("startRow",startRow);
           put("pageSize",limit);
        }};
    }
}
