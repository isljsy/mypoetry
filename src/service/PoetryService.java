package service;

import entity.Page;
import entity.Poetry;

import java.util.List;

/**
 * @author ljsy
 **/
public interface PoetryService {
    /**
     * 搜索词搜索的结果
     * @param word 搜索词
     * @return
     */
    List<Poetry> searchPoetry(String word, Page page );

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
     * @return
     */
    List<Poetry> findByDynasty(int id, Page page );

    /**
     * 通过作者找诗词
     * @param id 作者id
     * @return
     */
    List<Poetry> findByAuthor(int id,  Page page );

    /**
     * 通过类型找诗词
     * @param id 类型id

     * @return
     */
    List<Poetry> findByType(int id, Page page );

    /**
     * 通过作者和类型找诗词
     * @param authorId
     * @param typeId
     * @return
     */
    List<Poetry> findByAuthorAndType(int authorId, int typeId,Page page );
}
