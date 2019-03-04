package me.djyuning.blog.dao;

import me.djyuning.blog.entity.User;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface UserDao {

    @Select("SELECT * FROM user ORDER BY id DESC")
    User[] all();

    @Select("SELECT * FROM user WHERE id=#{id}")
    User getById(int id);

}
