package cn.bipark.reco.upms.model.exception;

import cn.bipark.reco.core.model.exception.AppException;

/**
* 用户等级 异常
*/
public class UserLevelException extends AppException {
    public UserLevelException() {
    }

    public UserLevelException(String message) {
        super(message);
    }

    public UserLevelException(String code, String message) {
        super(code, message);
    }
}