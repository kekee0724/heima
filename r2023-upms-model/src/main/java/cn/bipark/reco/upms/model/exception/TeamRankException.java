package cn.bipark.reco.upms.model.exception;

import cn.bipark.reco.core.model.exception.AppException;

/**
* 团队排行榜 异常
*/
public class TeamRankException extends AppException {
    public TeamRankException() {
    }

    public TeamRankException(String message) {
        super(message);
    }

    public TeamRankException(String code, String message) {
        super(code, message);
    }
}