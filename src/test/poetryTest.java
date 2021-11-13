package test;

import dao.PoetryDao;
import dao.impl.PoetryDaoImpl;
import org.junit.Test;

/**
 * @author ljsy
 **/
public class poetryTest {
    PoetryDaoImpl poetryDao = new PoetryDaoImpl();

    @Test
    public void changeContent() {
        poetryDao.findall().forEach(poetryDao::changeContent);
    }
}
