package cn.bipark.reco.upms.model.exception;

import cn.bipark.reco.core.model.exception.AppException;

/**
* 个人排行榜 异常
*/
public class UserRankException extends AppException {
    public UserRankException() {
    }

    public UserRankException(String message) {
        super(message);
    }

    public UserRankException(String code, String message) {
        super(code, message);
    }
}