package service.impl;

import dao.DynastyDao;
import dao.impl.DynastyDaoImpl;
import entity.Dynasty;
import service.DynastyService;

import java.util.List;

/**
 * @author ljsy
 **/
public class DynastyServiceImpl implements DynastyService {
    DynastyDao dynastyDao = new DynastyDaoImpl();

    /**
     * @return 所有朝代
     */
    @Override
    public List<Dynasty> findAll() {
        return null;
    }
}
