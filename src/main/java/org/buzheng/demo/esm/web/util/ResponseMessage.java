package org.buzheng.demo.esm.web.util;

/**
 * @Author: liushuijun
 * @Email : liushuijun@passiontec.cn
 * @Since:2018/07/20 14:25
 * @Description
 */
public enum ResponseMessage implements MessageInterface {
    ResponseError(500,"系统异常!"),
    ResponseSuccess(200,"操作成功!"),
    ResponseFail(300,"操作失败!");

    //私有变量
    private final int code;
    private final String value;
    //构造方法
    ResponseMessage(int code, String value) {
        this.code=code;
        this.value=value;
    }

    @Override
    public String getValue() {
        return this.value;
    }

    @Override
    public int getCode() {
        return this.code;
    }
}
