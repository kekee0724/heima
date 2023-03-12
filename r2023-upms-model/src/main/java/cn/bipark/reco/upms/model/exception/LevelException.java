package cn.bipark.reco.upms.model.exception;

import cn.bipark.reco.core.model.exception.AppException;

/**
* 等级 异常
*/
public class LevelException extends AppException {
    public LevelException() {
    }

    public LevelException(String message) {
        super(message);
    }

    public LevelException(String code, String message) {
        super(code, message);
    }
}