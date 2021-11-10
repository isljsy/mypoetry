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

    List<Poetry> findByAuthor(Author author, int start, int size);

    List<Poetry> findByType(String type,int start, int size);

    List<Poetry> findByAuthorAndType(Author author, String type, int start, int size);
}
