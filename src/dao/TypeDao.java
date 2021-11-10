package dao;

import entity.Type;

import java.util.List;

/**
 * @author ljsy
 **/
public interface TypeDao {
    /**
     * 所有类型
     * @param start 开始位置
     * @param size  获取数据的数量
     * @return 所有类型
     */
    List<Type> findAll(int start,int size);

}
