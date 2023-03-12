package cn.bipark.reco.upms.model.exception;

import cn.bipark.reco.core.model.exception.AppException;

/**
* 系统参数 异常
*/
public class SystemParamException extends AppException {
    public SystemParamException() {
    }

    public SystemParamException(String message) {
        super(message);
    }

    public SystemParamException(String code, String message) {
        super(code, message);
    }
}