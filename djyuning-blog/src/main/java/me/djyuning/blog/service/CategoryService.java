package me.djyuning.blog.service;

import me.djyuning.blog.entity.Category;
import me.djyuning.blog.dao.CategoryDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {

    @Autowired
    private CategoryDao categoryDao;

    // 获取全部分类
    public Category[] all() {
        Category[] categories = new Category[0];

        try {
            Category[] result = categoryDao.all();
            if (result != null) {
                categories = new Category[result.length];
                for (int i = 0; i < result.length; i++) {
                    categories[i] = result[i];
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return categories;
    }

    // 根据 ID 获取指定分类
    public Category getById(int id) {
        Category category = null;
        try {
            category = categoryDao.getById(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return category;
    }

    // 根据别名获取指定分类
    public Category getByAlias(String alias) {
        Category category = null;
        try {
            category = categoryDao.getByAlias(alias);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return category;
    }

}
