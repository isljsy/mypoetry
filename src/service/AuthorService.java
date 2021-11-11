package service;

import entity.Author;
import entity.Page;

import java.util.List;

/**
 * @author ljsy
 **/
public interface AuthorService {
    /**
     * 以该字母为拼音开头的作者总数
     * @param pinyin 拼音首字母
     * @return 作者总数
     */
    int pinyinAuthorCount(String pinyin);

    /**
     * 此朝代的所有作者
     * @param id 朝代id
     * @return 作者总数
     */
    int dynastyAuthorCount(int id);

    /**
     * 带分页的所有作者
     *
     * @return 所有诗人和词人
     */
    List<Author> findAll(Page page);

    /**
     * 拼音首字母找作者
     *
     * @param pinyin 拼音首字母
     * @return 姓名拼音以此字母开头的作者
     */
    List<Author> findAuthorByPinyin(String pinyin, Page page);

    /**
     * 以朝代找作者
     * @param id 朝代id
     * @return 作者数组
     */
    List<Author> findAuthorByDynasty(int id , Page page);

}
