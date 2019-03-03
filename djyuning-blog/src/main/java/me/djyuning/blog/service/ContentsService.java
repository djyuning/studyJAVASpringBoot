package me.djyuning.blog.service;

import me.djyuning.blog.beans.Contents;
import me.djyuning.blog.dao.ContentsDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ContentsService {

    @Autowired
    private ContentsDao contentsDao;

    // 获取全部内容
    public List<Contents> all() {
        List<Contents> contents = new ArrayList<>();

        try {
            List<Contents> result = contentsDao.all();

            if (result != null) {
                contents = result;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return contents;
    }

    // 根据 ID 获取内容
    public Contents getById(int id) {
        Contents content = new Contents();

        try {
            Contents result = contentsDao.getById(id);
            if (result != null) {
                content = result;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return content;
    }

}
