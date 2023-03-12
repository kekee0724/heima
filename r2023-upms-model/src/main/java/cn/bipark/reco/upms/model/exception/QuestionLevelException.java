package cn.bipark.reco.upms.model.exception;

import cn.bipark.reco.core.model.exception.AppException;

/**
* 题目等级 异常
*/
public class QuestionLevelException extends AppException {
    public QuestionLevelException() {
    }

    public QuestionLevelException(String message) {
        super(message);
    }

    public QuestionLevelException(String code, String message) {
        super(code, message);
    }
}