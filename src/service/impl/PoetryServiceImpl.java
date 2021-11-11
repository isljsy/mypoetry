package service.impl;

import dao.PoetryDao;
import dao.impl.PoetryDaoImpl;
import entity.Page;
import entity.Poetry;
import service.PoetryService;

import java.util.List;

/**
 * @author ljsy
 **/
public class PoetryServiceImpl implements PoetryService {
    PoetryDao poetryDao = new PoetryDaoImpl();


    /**
     * 搜索词搜索的结果
     *
     * @param word 搜索词
     * @param page
     * @return
     */
    @Override
    public List<Poetry> searchPoetry(String word, Page page) {
        return null;
    }

    /**
     * 返回指定起点和长度的诗词数组
     *
     * @param start 查询开始点
     * @param size  返回集合长度
     * @return size个诗词
     */
    @Override
    public List<Poetry> findAll(int start, int size) {
        return null;
    }

    /**
     * 通过朝代找诗词
     *
     * @param id   朝代id
     * @param page
     * @return
     */
    @Override
    public List<Poetry> findByDynasty(int id, Page page) {
        return null;
    }

    /**
     * 通过作者找诗词
     *
     * @param id   作者id
     * @param page
     * @return
     */
    @Override
    public List<Poetry> findByAuthor(int id, Page page) {
        return null;
    }

    /**
     * 通过类型找诗词
     *
     * @param id   类型id
     * @param page
     * @return
     */
    @Override
    public List<Poetry> findByType(int id, Page page) {
        return null;
    }

    /**
     * 通过作者和类型找诗词
     *
     * @param authorId
     * @param typeId
     * @param page
     * @return
     */
    @Override
    public List<Poetry> findByAuthorAndType(int authorId, int typeId, Page page) {
        return null;
    }
}
