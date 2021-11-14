package dao.impl;

import dao.Dao;
import dao.PoetryDao;
import entity.Author;
import entity.Dynasty;
import entity.Explain;
import entity.Poetry;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author ljsy
 **/
public class PoetryDaoImpl extends Dao implements PoetryDao {
    /**
     * 处理数据方法
     * @param explain
     */
    public void changeExplain(Explain explain){
        String sql = "update `poetry` set `content` = ?, `translate` = ?, `translate_res` = ?, `notes` = ?, `appreciation` = ?, `appreciation_res` = ?  where id = ?";
        List<Object> list = new ArrayList<>();

        list.add(explain.getContent());
        list.add(explain.getTranslate());
        list.add(explain.getTranslateRes());
        list.add(explain.getNotes());
        list.add(explain.getAppreciation());
        list.add(explain.getAppreciationRes());
        list.add(explain.getId());

        db.executeUpdate(sql,list);
    }

    /**
     * title 代 content
     * @return
     */
    public List<Explain> findall(){
        db.executeQuery("select `id`, `content`, `translate`, `translate_res`, `notes`, `appreciation`, `appreciation_res` from `poetry`");
        List<Explain> list = new ArrayList<>();
        while (db.next()){
            Explain explain = new Explain();
            explain.setId(db.getInt(1));
            explain.setContent(db.getString(2));
            explain.setTranslate(db.getString(3));
            explain.setTranslateRes(db.getString(4));
            explain.setNotes(db.getString(5));
            explain.setAppreciation(db.getString(6));
            explain.setAppreciationRes(db.getString(7));
            list.add(explain);
        }
        return  list;
    }


    /**
     * 搜索词搜索的结果
     *
     * @param word
     * @param start
     * @param size
     * @return
     */
    @Override
    public List<Poetry> searchPoetry(String word, int start, int size) {
        return null;
    }

    /**
     * 返回指定起点和长度的诗词数组
     *
     * @param start id开始点
     * @param from limit开始
     * @param size  返回集合长度
     * @return size个诗词
     */
    @Override
    public List<Poetry> findAll(int start, int from, int size) {
        List<Poetry> list = null;
        String sql = "select p.`id`, p.`title`, p.`content`,p.`translate`,p.`translate_res`,p.`notes`,p.`appreciation`,p.`appreciation_res`, a.`id`, a.`name`, a.`lifetime`, d.`id`, d.`dynasty_name` \n" +
                "from `poetry` as p\n" +
                "inner join `author` as a\n" +
                "on p.`author` = a.`id`\n" +
                "inner join `dynasty` as d\n" +
                "on a.`dynasty` = d.`id`\n" +
                "where p.`id` > ?\n" +
                "limit ?, ?";
        db.executeQuery(sql, Arrays.asList(start,from,size));
        list = new ArrayList<>();
        while (db.next()){
            Poetry poetry = new Poetry();
            poetry.setId(db.getInt(1));
            poetry.setTitle(db.getString(2));
            poetry.setContent(db.getString(3));
            poetry.setTranslate(db.getString(4));
            poetry.setTranslateRes(db.getString(5));
            poetry.setNotes(db.getString(6));
            poetry.setAppreciation(db.getString(7));
            poetry.setAppreciationRes(db.getString(8));

            Author author = new Author();
            author.setId(db.getInt(9));
            author.setName(db.getString(10));
            author.setLifeTime(db.getString(11));

            Dynasty dynasty = new Dynasty();
            dynasty.setId(db.getInt(12));
            dynasty.setDynastyName(db.getString(13));
            author.setDynasty(dynasty);
            poetry.setAuthor(author);

            list.add(poetry);
        }
        return list;
    }


    /**
     * 通过朝代找诗词
     *
     * @param id    朝代id
     * @param start
     * @param size
     * @return
     */
    @Override
    public List<Poetry> findByDynasty(int id, int start, int size) {
        return null;
    }

    /**
     * 通过作者找诗词
     *
     * @param id    作者id
     * @param start
     * @param size
     * @return
     */
    @Override
    public List<Poetry> findByAuthor(int id, int start, int size) {
        return null;
    }

    /**
     * 通过类型找诗词
     *
     * @param id    类型id
     * @param start
     * @param size
     * @return
     */
    @Override
    public List<Poetry> findByType(int id, int start, int size) {
        return null;
    }

    /**
     * 通过作者和类型找诗词
     *
     * @param authorId
     * @param typeId
     * @param start
     * @param size
     * @return
     */
    @Override
    public List<Poetry> findByAuthorAndType(int authorId, int typeId, int start, int size) {
        return null;
    }

    /**
     * 所有诗词总数
     *
     * @return
     */
    @Override
    public int countAll() {
        db.executeQuery("select count(1) from `poetry`");
        if(db.next()){
            return db.getInt(1);
        }
        return 0;
    }
}
