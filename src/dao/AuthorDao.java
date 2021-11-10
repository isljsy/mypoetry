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
     *
     * @param pinyin
     * @return
     */
    int pinyinAuthorCount(String pinyin);

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
     * @param page   获取的页数
     * @return 姓名拼音以此字母开头的作者
     */
    List<Author> findAuthorsByPinyin(String pinyin, Page page);

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
