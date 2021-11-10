package dao;

import entity.Cipai;

import java.util.List;

/**
 * @author ljsy
 **/
public interface CipaiDao {
    /**
     * 分页的所有词牌名
     * @param start 查询开始
     * @param size 返回数组长度
     * @return size个词牌名
     */
    List<Cipai> findAll(int start, int size);
}
