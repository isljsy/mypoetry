package dao;

import entity.Author;
import entity.Poetry;

import java.util.List;

/**
 * @author ljsy
 **/
public interface PoetryDao {
    /**
     * 返回指定起点和长度的诗词数组
     * @param start 查询开始点
     * @param size  返回集合长度
     * @return size个诗词
     */
    List<Poetry> findAll(int start, int size);

    /**
     * 通过朝代找诗词
     * @param id 朝代id
     * @param start
     * @param size
     * @return
     */
    List<Poetry> findByDynasty(int id, int start, int size);

    /**
     * 通过作者找诗词
     * @param id 作者id
     * @param start
     * @param size
     * @return
     */
    List<Poetry> findByAuthor(int id, int start, int size);

    /**
     * 通过类型找诗词
     * @param id 类型id
     * @param start
     * @param size
     * @return
     */
    List<Poetry> findByType(int id,int start, int size);

    /**
     * 通过作者和类型找诗词
     * @param authorId
     * @param typeId
     * @param start
     * @param size
     * @return
     */
    List<Poetry> findByAuthorAndType(int authorId, int typeId, int start, int size);
}
