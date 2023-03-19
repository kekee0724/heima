package cn.bipark.reco.domain;

public class Result<T> {
    private Integer code;
    private String msg;
    private T data;

    public Result() {
    }

    public static Result success(Object data) {
        return new Result(200, data, "success");
    }

    public Result(Integer code, T data, String msg) {
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

    /**
     * 获取
     *
     * @return code
     */
    public Integer getCode() {
        return code;
    }

    /**
     * 设置
     *
     * @param code
     */
    public void setCode(Integer code) {
        this.code = code;
    }

    /**
     * 获取
     *
     * @return msg
     */
    public String getMsg() {
        return msg;
    }

    /**
     * 设置
     *
     * @param msg
     */
    public void setMsg(String msg) {
        this.msg = msg;
    }

    /**
     * 获取
     *
     * @return data
     */
    public T getData() {
        return data;
    }

    /**
     * 设置
     *
     * @param data
     */
    public void setData(T data) {
        this.data = data;
    }

    public String toString() {
        return "Result{code = " + code + ", msg = " + msg + ", data = " + data + "}";
    }
}
