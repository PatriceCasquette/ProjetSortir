package fr.eni.sortir.dal;

import fr.eni.sortir.bll.BusinessException;
import fr.eni.sortir.bo.Site;

import java.sql.SQLException;
import java.util.List;

public interface SiteDAO {

    Site selectById(int idSite) throws SQLException;

    List<Site> selectAll() throws BusinessException;

    void insert(Site site) throws BusinessException;

    Site update(Site site) throws BusinessException;

    void delete(int idSite) throws BusinessException;
}
