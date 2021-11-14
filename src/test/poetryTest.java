package test;

import dao.impl.PoetryDaoImpl;
import org.junit.Test;

/**
 * @author ljsy
 **/
public class poetryTest {
    PoetryDaoImpl poetryDao = new PoetryDaoImpl();

    /**
     * 处理注释数据为/分割的字符串
     */
    @Test
    public void changeContent() {
        poetryDao.findall().forEach(poetryDao::changeExplain);
    }
}
