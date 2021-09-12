package edu.javacourse.studentorder.validator;

import edu.javacourse.studentorder.domain.AnswerWedding;
import edu.javacourse.studentorder.domain.StudentOrder;

public class WeddingValidator {
    String hostName;
    String login;
    String password;
    public AnswerWedding checkWedding(StudentOrder so){
        System.out.println("Check Wedding is running: "+hostName+ ", "+login+", "+ password);
        AnswerWedding ans= new AnswerWedding();
        ans.success=false;
        return ans;
    }
}
