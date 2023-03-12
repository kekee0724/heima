package cn.bipark.reco.upms.model.exception;

import cn.bipark.reco.core.model.exception.AppException;

/**
* 用户 异常
*/
public class UserException extends AppException {
    public UserException() {
    }

    public UserException(String message) {
        super(message);
    }

    public UserException(String code, String message) {
        super(code, message);
    }
}