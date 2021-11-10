package dao;

import entity.Dynasty;

import java.util.List;

/**
 * @author ljsy
 **/
public interface DynastyDao {
    /**
     * @return 所有朝代
     */
    List<Dynasty> findAll();
}
