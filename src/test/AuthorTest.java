package test;

import dao.AuthorDao;
import dao.impl.AuthorDaoImpl;
import entity.Author;
import org.junit.Test;

/**
 * @author ljsy
 **/
public class AuthorTest {
    AuthorDao ad = new AuthorDaoImpl();

    @Test
    public void findAll() {
        ad.findAll(0, 100000).forEach(System.out::println);
    }

    @Test
    public void authorSetPinyin() {
        Author author = new Author();
        author.setName("李白");
        System.out.println();
    }

    @Test
    public void addAuthor() {
        Author author = new Author();
        author.setName("林");
        author.setLifeTime("ss");
//        author.setDynasty("唐代");
        ad.addAuthor(author);
    }

    // 添加所有作者的拼音首字母
    @Test
    public void setAllPinyin() {
        ad.findAll(0, 10000).forEach(System.out::println);
    }

}
