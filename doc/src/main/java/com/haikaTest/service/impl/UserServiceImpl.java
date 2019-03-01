package com.haikaTest.service.impl;

import com.haikaTest.beans.User;
import com.haikaTest.dao.UserDao;
import com.haikaTest.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    // 启动 spring IoC 时，容器自动装载了一个 AutowiredAnnotationBeanPostProcessor 后置处理器，
    // 当容器扫描到 @Autowied、@Resource 或 @Inject 时，就会在 IoC 容器自动查找需要的 beans，并装配给该对象的属性
    @Autowired
    private UserDao userDao;

    @Override
    public boolean addUser(User user) {
        boolean flag = false;
        try {
            userDao.addUser(user);
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public User[] findAll() {
        User[] resData = new User[0];
        try {
            User[] res = userDao.findAll();
            resData = new User[res.length];
            for (int i = 0; i < res.length; i++) {
                resData[i] = res[i];
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resData;
    }

    @Override
    public boolean deleteUser(int id) {
        boolean flag = false;
        try {
            flag = userDao.deleteUser(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public User findUserById(int id) {
        User user = new User();
        try {
            user = userDao.findUserById(id);
        } catch (Exception e) {
            e.getStackTrace();
        }
        return user;
    }

    @Override
    public User findUserByEmail(String email) {
        User user = new User();
        try {
            user = userDao.findUserByEmail(email);
        } catch (Exception e) {
            e.getStackTrace();
        }
        return user;
    }

    @Override
    public User findUserByUsername(String username) {
        User user = new User();
        try {
            user = userDao.findUserByUsername(username);
        } catch (Exception e) {
            e.getStackTrace();
        }
        return user;
    }

    @Override
    public User findUserByMobile(String mobile) {
        User user = new User();
        try {
            user = userDao.findUserByMobile(mobile);
        } catch (Exception e) {
            e.getStackTrace();
        }
        return user;
    }

}
