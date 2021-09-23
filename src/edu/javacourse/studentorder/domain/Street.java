package edu.javacourse.studentorder.domain;

public class Street {
    private long streetCode;
    private String streetName;

    public Street(long streetCode, String streetName) {
        this.streetCode = streetCode;
        this.streetName = streetName;
    }

    public Street() {
    }

    public long getStreetCode() {
        return streetCode;
    }

    public void setStreetCode(long streetCode) {
        this.streetCode = streetCode;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }
}
