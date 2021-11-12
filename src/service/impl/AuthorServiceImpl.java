package service.impl;

import dao.AuthorDao;
import dao.impl.AuthorDaoImpl;
import entity.Author;
import entity.Page;
import service.AuthorService;

import java.util.List;

/**
 * @author ljsy
 **/
public class AuthorServiceImpl implements AuthorService {

    AuthorDao authorDao = new AuthorDaoImpl();


    /**
     * 以该字母为拼音开头的作者总数
     *
     * @param pinyin 拼音首字母
     * @return 作者总数
     */
    @Override
    public int pinyinAuthorCount(String pinyin) {
        return 0;
    }

    /**
     * 此朝代的所有作者
     *
     * @param id 朝代id
     * @return 作者总数
     */
    @Override
    public int dynastyAuthorCount(int id) {
        return 0;
    }

    /**
     * 带分页的所有作者
     *
     * @param page
     * @return 所有诗人和词人
     */
    @Override
    public List<Author> findAll(Page page) {
        return null;
    }

    /**
     * 拼音首字母找作者
     *
     * @param pinyin 拼音首字母
     * @param page
     * @return 姓名拼音以此字母开头的作者
     */
    @Override
    public List<Author> findAuthorByPinyin(String pinyin, Page page) {
        return null;
    }

    /**
     * 以朝代找作者
     *
     * @param id   朝代id
     * @param page
     * @return 作者数组
     */
    @Override
    public List<Author> findAuthorByDynasty(int id, Page page) {
        return null;
    }
}