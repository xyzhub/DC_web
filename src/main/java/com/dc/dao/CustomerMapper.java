package com.dc.dao;

import com.dc.pojo.Customer;
import com.dc.pojo.CustomerExample;
import com.dc.service.CrudService;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomerMapper extends CrudService<Customer> {
    int deleteByPrimaryKey(Integer id);

    int insert(Customer record);

    int insertSelective(Customer record);

    List<Customer> selectByExample(CustomerExample example);

    Customer selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);

    /**
     * 开启用户会员状态
     * @param id
     */
    void enableStatus(int id);
}