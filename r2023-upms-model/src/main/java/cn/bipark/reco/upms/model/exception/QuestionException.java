package cn.bipark.reco.upms.model.exception;

import cn.bipark.reco.core.model.exception.AppException;

/**
* 题目 异常
*/
public class QuestionException extends AppException {
    public QuestionException() {
    }

    public QuestionException(String message) {
        super(message);
    }

    public QuestionException(String code, String message) {
        super(code, message);
    }
}