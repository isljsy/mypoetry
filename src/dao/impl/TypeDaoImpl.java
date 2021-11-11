package dao.impl;

import dao.TypeDao;
import entity.Type;

import java.util.List;

/**
 * @author ljsy
 **/
public class TypeDaoImpl implements TypeDao {
    /**
     * 所有类型
     *
     * @param start 开始位置
     * @param size  获取数据的数量
     * @return 所有类型
     */
    @Override
    public List<Type> findAll(int start, int size) {
        return null;
    }

    /**
     * 返回该作者的诗词的所有类型
     *
     * @param id    作者id
     * @param start
     * @param size
     * @return
     */
    @Override
    public List<Type> findByAuthor(int id, int start, int size) {
        return null;
    }

    /**
     * 该作者的所有诗词的所有类型
     *
     * @param id 作者id
     * @return
     */
    @Override
    public int typeForAuthorCount(int id) {
        return 0;
    }
}
