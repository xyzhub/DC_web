package com.dc.dao;

import com.dc.pojo.ZiXun;
import com.dc.pojo.ZiXunExample;

import java.util.List;

public interface ZiXunMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ZiXun record);

    int insertSelective(ZiXun record);

    List<ZiXun> selectByExample(ZiXunExample example);

    ZiXun selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ZiXun record);

    int updateByPrimaryKey(ZiXun record);

    /**
     * 资讯审核（通过）
     * @param zid
     */
    void shenhe(int zid);
}