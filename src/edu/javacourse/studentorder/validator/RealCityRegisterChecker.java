package edu.javacourse.studentorder.validator;

import edu.javacourse.studentorder.domain.Person;
import edu.javacourse.studentorder.domain.register.CityRegisterCheckerResponse;
import edu.javacourse.studentorder.exception.CityRegisterException;


public class RealCityRegisterChecker implements CityRegisterChecker{
    @Override
    public CityRegisterCheckerResponse checkPerson(Person person)  throws CityRegisterException {
        return null;
    }
}
