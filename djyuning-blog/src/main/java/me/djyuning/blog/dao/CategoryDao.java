package me.djyuning.blog.dao;

import me.djyuning.blog.entity.Category;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface CategoryDao {

    // 获取全部份分类
    @Select("SELECT * FROM category ORDER BY sort ASC,id DESC")
    Category[] all();

    // 根据 ID 查找
    @Select("SELECT * FROM category WHERE id=#{id}")
    Category getById(int id);

    // 根据别名查找
    @Select("SELECT * FROM category WHERE alias=#{alias}")
    Category getByAlias(String alias);

}
