package service;

import entity.Dynasty;

import java.util.List;

/**
 * @author ljsy
 **/
public interface DynastyService {
    /**
     * @return 所有朝代
     */
    List<Dynasty> findAll();
}
