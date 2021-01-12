package com.dc.service;

import com.dc.pojo.ZiXun;

import java.util.List;

/**
 * @author 孟赟强
 * @date 2020/12/19-17:18
 * 资讯
 */
public interface ZiXunService extends CrudService<ZiXun> {
    /**
     * 资讯审核通过
     * @param zid
     */
    void shenhe(int zid);

    /**
     * 连带未审核的资讯
     * @return
     */
    List<ZiXun> list1();
}
