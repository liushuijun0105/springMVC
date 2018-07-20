package org.buzheng.demo.esm.web.util;

/**
 * @Author: liushuijun
 * @Email : liushuijun@passiontec.cn
 * @Since:2018/07/20 14:25
 * @Description
 */
public enum ResponseMessage implements MessageInterface {
    //构造提示信息
    ResponseError(500,"系统异常!"),
    ResponseSuccess(200,"操作成功!"),
    ResponseFail(300,"操作失败!"),
    ResponseUserPass(301,"用户名密码不匹配!");

    //私有变量
    private final int code;
    private final String message;
    //构造方法
    ResponseMessage(int code, String message) {
        this.code=code;
        this.message=message;
    }

    @Override
    public String getMessage() {
        return this.message;
    }

    @Override
    public int getCode() {
        return this.code;
    }
    //根据code获取ResponseMessage对象
    public static ResponseMessage getResponseMessage(int value) {
        for (ResponseMessage responseMessage : ResponseMessage.values()) {
            if (value == responseMessage.getCode()) {
                return responseMessage;
            }
        }
        return null;
    }
}
