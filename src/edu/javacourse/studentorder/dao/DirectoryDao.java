package edu.javacourse.studentorder.dao;

import edu.javacourse.studentorder.domain.Street;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class DirectoryDao {

    private Connection getConnection() throws SQLException {
        Connection connection = DriverManager.getConnection(
                "jdbc:postgresql://localhost:5432/jc_student",
                "postgres", "QWa_172201");
        return connection;
    }

    public List<Street> findStreets (String pattern) throws SQLException {
        List<Street> result=new LinkedList<>();
        Connection connection = getConnection();
        Statement stmt = connection.createStatement();
        String sql = "select street_code, street_name from jc_street where  upper(street_name) like upper('%" + pattern + "%')";
        ResultSet rs = stmt.executeQuery(sql);
        while ((rs.next())){
            Street str = new Street(rs.getLong("street_code"), rs.getString("street_name"));
        result.add(str);
        }
        return result;

    }

}
