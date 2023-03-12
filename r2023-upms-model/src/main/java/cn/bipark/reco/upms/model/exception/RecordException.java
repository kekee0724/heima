package cn.bipark.reco.upms.model.exception;

import cn.bipark.reco.core.model.exception.AppException;

/**
* 答题记录 异常
*/
public class RecordException extends AppException {
    public RecordException() {
    }

    public RecordException(String message) {
        super(message);
    }

    public RecordException(String code, String message) {
        super(code, message);
    }
}