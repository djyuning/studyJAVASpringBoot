package me.djyuning.blog.dao;

import me.djyuning.blog.entity.Contents;

import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface ContentsDao {

    @Select("SELECT * FROM contents ORDER BY id DESC")
    @Results({
            // 关联查询分类
            @Result(property = "category",
                    column = "cid",
                    one = @One(select = "me.djyuning.blog.dao.CategoryDao.getById")),
            // 关联查询作者
            @Result(property = "author",
                    column = "aid",
                    one = @One(select = "me.djyuning.blog.dao.UserDao.getById")),
    })
    public List<Contents> all();

    @Select("SELECT * FROM contents WHERE id=#{id}")
    @Results({
            // 关联查询分类
            @Result(property = "category",
                    column = "cid",
                    one = @One(select = "me.djyuning.blog.dao.CategoryDao.getById")),
            // 关联查询作者
            @Result(property = "author",
                    column = "aid",
                    one = @One(select = "me.djyuning.blog.dao.UserDao.getById")),
    })
    public Contents getById(int id);

}
