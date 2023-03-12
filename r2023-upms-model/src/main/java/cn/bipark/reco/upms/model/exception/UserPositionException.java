package cn.bipark.reco.upms.model.exception;

import cn.bipark.reco.core.model.exception.AppException;

/**
* 用户定位 异常
*/
public class UserPositionException extends AppException {
    public UserPositionException() {
    }

    public UserPositionException(String message) {
        super(message);
    }

    public UserPositionException(String code, String message) {
        super(code, message);
    }
}