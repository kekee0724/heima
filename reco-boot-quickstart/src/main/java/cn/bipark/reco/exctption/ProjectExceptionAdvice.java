package cn.bipark.reco.exctption;

import cn.bipark.reco.domain.Result;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class ProjectExceptionAdvice {

    @ExceptionHandler(SystemException.class)
    public Result doException(SystemException ex) {
        //记录日志
        //发送消息给运维
        //发送邮件给开发人员，eX对象发送给开发人员
        return new Result(ex.getCode(), null, ex.getMessage());
    }

    @ExceptionHandler(BusinessException.class)
    public Result doException(BusinessException ex) {
        return new Result(ex.getCode(), null, ex.getMessage());
    }

    @ExceptionHandler(Exception.class)
    public Result doException(Exception ex) {
        //记录日志
        //发送消息给运维
        //发送邮件给开发人员，eX对象发送给开发人员
        return new Result(Code.UNKNOWN_ERR, null, "系统繁忙，请稍后再试！");
    }
}
