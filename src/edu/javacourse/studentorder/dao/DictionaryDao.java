package edu.javacourse.studentorder.dao;

import edu.javacourse.studentorder.domain.CountryArea;
import edu.javacourse.studentorder.domain.PassportOffice;
import edu.javacourse.studentorder.domain.RegisterOffice;
import edu.javacourse.studentorder.domain.Street;
import edu.javacourse.studentorder.exception.DaoException;
import java.util.List;

public interface DictionaryDao {
    List<Street> findStreets(String var1) throws DaoException;

    List<PassportOffice> findPassportOffices(String var1) throws DaoException;

    List<RegisterOffice> findRegisterOffices(String var1) throws DaoException;

    List<CountryArea> findAreas(String var1) throws DaoException;

}
