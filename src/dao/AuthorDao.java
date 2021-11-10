package dao;

import entity.Author;
import entity.Page;

import java.awt.print.Pageable;
import java.util.List;

/**
 * @author ljsy
 **/
public interface AuthorDao {

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
     * 带分页
     *
     * @return 所有诗人和词人
     */
    List<Author> findAll(int start, int size);

    /**
     * 拼音首字母找作者
     *
     * @param pinyin 拼音首字母
     * @param start 查询开始点
     * @param size  获取的数量
     * @return 姓名拼音以此字母开头的作者
     */
    List<Author> findAuthorByPinyin(String pinyin, int start, int size);

    /**
     * 以朝代找作者
     * @param id 朝代id
     * @param start 查询开始
     * @param size 返回长度
     * @return 作者数组
     */
    List<Author> findAuthorByDynasty(int id , int start, int size);

    /**
     * id删除作者
     *
     * @param id 作者id
     * @return 删除的行数
     */
    int deleteAuthorById(int id);

    /**
     * 修改作者
     *
     * @param author 作者对象
     * @return 修改影响的行数
     */
    int changeAuthor(Author author);

    /**
     * 修改姓名首字拼音字母
     *
     * @param author 要修改的作者
     */
    void changePinyin(Author author);

    /**
     * 添加作者
     *
     * @param author 添加的作者
     * @return 成功的行数
     */
    int addAuthor(Author author);
}
