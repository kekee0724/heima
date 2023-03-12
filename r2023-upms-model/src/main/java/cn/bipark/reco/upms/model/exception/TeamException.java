package cn.bipark.reco.upms.model.exception;

import cn.bipark.reco.core.model.exception.AppException;

/**
* 团队 异常
*/
public class TeamException extends AppException {
    public TeamException() {
    }

    public TeamException(String message) {
        super(message);
    }

    public TeamException(String code, String message) {
        super(code, message);
    }
}