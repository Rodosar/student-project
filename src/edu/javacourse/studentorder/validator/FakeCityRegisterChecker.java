package edu.javacourse.studentorder.validator;

import edu.javacourse.studentorder.domain.CityRegisterCheckerResponse;
import edu.javacourse.studentorder.domain.Person;

public class FakeCityRegisterChecker implements CityRegisterChecker{
    @Override
    public CityRegisterCheckerResponse checkPerson(Person person) {
        return null;
    }
}
