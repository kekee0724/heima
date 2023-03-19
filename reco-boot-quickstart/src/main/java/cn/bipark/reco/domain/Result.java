package cn.bipark.reco.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Result<T> {
    private Integer code;
    private String msg;
    private T data;

    public static Result success(Object data) {
        return new Result(200, data, "success");
    }

    public Result(Integer code, T data, String msg) {
        this.code = code;
        this.msg = msg;
        this.data = data;
    }
}
