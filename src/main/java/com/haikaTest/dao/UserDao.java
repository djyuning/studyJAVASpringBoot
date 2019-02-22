package com.haikaTest.dao;

import com.haikaTest.beans.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

// 在接口上添加了这个注解表示这个接口是基于注解实现的CRUD
@Mapper
@Repository
public interface UserDao {

    // 获取全部用户
    @Select("SELECT id,username,password,email,mobile,created_at FROM user")
    User[] findAll();

    // 根据 ID 获取用户
    @Select("SELECT id,username,password,email,mobile,created_at FROM user where id=#{id}")
    User findUserById(int id);

    // 根据用户名获取用户
    @Select("SELECT id,username,password,email,mobile,created_at FROM user where username=#{username}")
    User findUserByUsername(String username);

    // 根据邮箱获取用户
    @Select("SELECT id,username,password,email,mobile,created_at FROM user where email=#{email}")
    User findUserByEmail(String email);

    // 根据手机号获取用户
    @Select("SELECT id,username,password,email,mobile,created_at FROM user where mobile=#{mobile}")
    User findUserByMobile(String mobile);

    // 新增用户
    @Insert("insert into user(username,password,email,mobile,created_at) values (#{username},#{password},#{email},#{mobile},#{created_at})")
    boolean addUser(User user);

    // 删除用户
    @Delete("delete from user where id=#{id}")
    boolean deleteUser(int id);

}
