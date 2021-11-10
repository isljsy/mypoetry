package dao.impl;

import dao.AuthorDao;
import dao.Dao;
import entity.Author;
import entity.Page;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author ljsy
 **/
public class AuthorDaoImpl extends Dao implements AuthorDao {
    /**
     * @return 所有诗人和词人
     */
    @Override
    public List<Author> findAll(int start, int limit) {
        List<Author> list = null;
        String sql = "select distinct `author`, `dynasty` from `author` limit ?, ?";
        db.executeQuery(sql, Arrays.asList(start, limit));
        list = new ArrayList<>();
        while (db.next()) {
            Author author = new Author();
            author.setName(db.getString(1));
            author.setDynasty(db.getString(2));
            list.add(author);
        }
        System.out.println("取到:" + list.size());
        return list;
    }

    /**
     * 拼音首字母找作者
     *
     * @param pinyin 拼音首字母
     * @param page   获取的页数
     * @return 姓名拼音以此字母开头的作者
     */
    @Override
    public List<Author> findAuthorsByPinyin(String pinyin, Page page) {
        return null;
    }

    /**
     * id删除作者
     *
     * @param id 作者id
     * @return 删除的行数
     */
    @Override
    public int deleteAuthorById(int id) {
        return 0;
    }

    /**
     * 修改作者
     *
     * @param author 作者对象
     * @return 修改影响的行数
     */
    @Override
    public int changeAuthor(Author author) {

        return 0;
    }

    /**
     * 修改姓名首字拼音字母
     *
     * @param author 要修改的作者
     */
    @Override
    public void changePinyin(Author author) {
        String sql = "update `author` set `pinyin` = ? where `name` = ?";
        db.executeUpdate(sql, Arrays.asList(author.getPinyin(), author.getName()));
    }

    /**
     * @param author 添加的作者
     * @return 成功的行数
     */
    @Override
    public int addAuthor(Author author) {
        List<Object> list = new ArrayList<>();
        list.add(author.getName());
        list.add(author.getDynasty());
        list.add(author.getLifeTime());
        list.add(author.getPinyin());
        return db.executeUpdate("insert into `author` (`name`,`dynasty`,`lifetime`,`pinyin`) value (?,?,?,?)", list);
    }


}
