package cn.bipark.reco.order.model.exception;

import cn.bipark.reco.core.model.exception.AppException;

/**
* 测试对象 异常
*/
public class OrderException extends AppException {
    public OrderException() {
    }

    public OrderException(String message) {
        super(message);
    }

    public OrderException(String code, String message) {
        super(code, message);
    }
}