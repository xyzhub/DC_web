package com.dc.service.Impl;

import com.dc.dao.UserRoleMapper;
import com.dc.pojo.*;
import com.dc.service.UserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @date 2020/12/19-21:38
 */
@Service
public class UserRoleServiceImpl implements UserRoleService {
    @Autowired
    UserRoleMapper userRoleMapper;

    @Override
    public void setRoles(User user, long[] roleIds) {
        //删除当前管理员所有的角色
        UserRoleExample example= new UserRoleExample();
        example.createCriteria().andUidEqualTo(user.getId());

        List<UserRole> urs= userRoleMapper.selectByExample(example);

        for (UserRole userRole : urs)
            userRoleMapper.deleteByPrimaryKey(userRole.getId());

        //设置新的角色关系
        if(null!=roleIds)
            for (long rid : roleIds) {
                UserRole userRole = new UserRole();
                userRole.setRid(rid);
                //插入管理员新的所有权限
                userRole.setUid(user.getId());
                userRoleMapper.insert(userRole);
            }
    }

    @Override
    public void deleteByUser(long userId) {
        UserRoleExample example= new UserRoleExample();
        example.createCriteria().andUidEqualTo(userId);
        //urs:传进来的管理员的id去作为条件查询UserRole表的记录的集合
        List<UserRole> urs= userRoleMapper.selectByExample(example);
        for (UserRole userRole : urs) {//依次删除记录
            userRoleMapper.deleteByPrimaryKey(userRole.getId());
        }
    }

    @Override
    public void deleteByRole(long roleId) {
        UserRoleExample example= new UserRoleExample();
        example.createCriteria().andRidEqualTo(roleId);
        //查询UserRole表为角色id的记录  下面删除
        List<UserRole> urs= userRoleMapper.selectByExample(example);
        for (UserRole userRole : urs) {
            userRoleMapper.deleteByPrimaryKey(userRole.getId());
        }
    }
}
