package com.dc.service;

import com.dc.pojo.Customer;

/**
 * @author 孟赟强
 * @date 2020/12/18-14:32
 */
public interface CustomerService extends CrudService<Customer>{
    /**
     * 返回登陆的用户
     * @param customer
     * @return
     */
    public Customer foreLogin(Customer customer);

    /**
     * 设置会员
     * @param id
     */
    public void shezhihuiyuan(int id);
}
