package com.haikaTest.service;

import com.haikaTest.beans.User;
import org.springframework.stereotype.Service;

@Service
public interface UserService {

    // 获取全部用户
    User[] findAll();

    // 新增用户
    boolean addUser(User user);

    // 删除用户
    boolean deleteUser(int id);

    // 根据 ID 查询用户信息
    User findUserById(int id);

    // 根据邮箱查询用户信息
    User findUserByEmail(String email);

    // 根据用户名查询用户
    User findUserByUsername(String username);

    // 根据手机号查询用户
    User findUserByMobile(String mobile);

}
