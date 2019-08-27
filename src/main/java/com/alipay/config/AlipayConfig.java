package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016100100642841";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDi/1pqUfoG1RfhZ+QOt5+oI3bYOm8xNk4hEL+2cDykzB75McLqNhHuWh6lgm/bAEo5sYaEWlIfDbrChXyytIXHYW6loxarO28WPFBIkGgREex6T5raAoblk8HUSj2Z6RPXXySlZFHUQEjXEvCNuRs0ltJYhq1VmYuT2WyECPK+dvPdBIQGMBv5KvoRx71rzzPUIyPRPSpROSMHbZeHXzGf0u4vMoWgSI3z1aGTGBX5JPe0pHCdy0mmafqhnxf4/knU0ubTrGqFfCkhknnfg/0hxzTQoHxhgbON87aF0L3HFuUtfrLt7ViTO3/8MNvIvpgxHWMTHjNGABuwqJ329uThAgMBAAECggEAGezqKax1LuSVlqPj8x5buLtcLnP2ERvPro0YKEEHXBcIDpP1XASS5bMbPvH3zn5o+8/fuiwKpwtNYjwWst5VTSE+nuJSi3n9RP/cd30utYxjgtCmsfGJ8JyAjbtw76wkHPv71nvvsJsq9o1uNfGHPule2sd+8oDX5Sn279mJx+DdBV+UNKeck9+c7iVk4VtGGXQ7CzXmlOzjhhpsoaaQFKtj+ulaie69JFCE7zDfA1baEohk5DoUbEfLQOe/hH2KD3rE3r2ng2XbulStS4j+XzfG1wBo/zm4r98B8EAtBpU3aOHT2Jyran8IkXBwyJybk5zGjAKfs2/nHWGZczXoAQKBgQD0dBc+k/o+rhpehsgn/gP4n2lzuFVrT5mVVzveiKYSE3DgcpgoG+0IX+k9llrBYUgb5/O9Ly2sg5IzoEch1Pw7ZGPKAKuxDb8f8Zl8qkEgTN247FvoqRZNe9srJcDW+xS9mlxLT5SOKdN9eKXYhUjX9ygi/goNFi1ntC4bLhCfoQKBgQDtuC+aU6ysXj7a5I/G/ugU+kwoKhxSQDJDeIP8pLtSQvhQWfQp5ZVjehQXHJaJ6BIHOP2+LzTmawkLNruCHsXx8tEfcLkqbyzfC1znuNwOLXSL1lbXP0CdhpAwSYTuMVcCZOKyO1CvFDHDf4HFScYeV5COEdLeMKhO6Q/OppU9QQKBgEkiXj3rmaedAOic3E8SsO92Cd+EG5IiW2mRkqjOKxknVdLgleMSD8U8pJQ3YmmOiDtJFuPXtItzRY9KeV2G0fuW2j/6GWO8IB0Xc/sXGKroNEF5/TlLNQ/zaSusfNgUgC0FfG1Pnrs1ij90k/GGVre+CvUFGc62ftkSz+Rz0KdhAoGBAOCZhWBqblrtMLXf/Xgmn2AynIHWR6vuu47D7vBlNBck7zf7xZVQNTUnwpOTjyf8/AuW7ScjsveBaaoOrFrkeGGA6dSqzEgrglm6gqztG/zJNbRpbuMv//zVhqYY0F+8fljkuMts/25rxhjP/+xHJ8jDMvEIJhOIJX1o9mZpPdgBAoGAUcW9RWl7sX5LzrTZheYZocq2w+CYOMgjKXsmZwKIMl5nL7F10KGNCD6vJr9bLrUIk25VlU8LOTYp7bhyLttclNhN/guIa9PBsGWbXqGgoamaaQaEt5A+KXtf48fxLo6OH2LFFPmPKxBOTwb/7D+1v196T1B4TuXnLDAjx1TzWzg=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4v9aalH6BtUX4WfkDrefqCN22DpvMTZOIRC/tnA8pMwe+THC6jYR7loepYJv2wBKObGGhFpSHw26woV8srSFx2FupaMWqztvFjxQSJBoERHsek+a2gKG5ZPB1Eo9mekT118kpWRR1EBI1xLwjbkbNJbSWIatVZmLk9lshAjyvnbz3QSEBjAb+Sr6Ece9a88z1CMj0T0qUTkjB22Xh18xn9LuLzKFoEiN89WhkxgV+ST3tKRwnctJpmn6oZ8X+P5J1NLm06xqhXwpIZJ534P9Icc00KB8YYGzjfO2hdC9xxblLX6y7e1Ykzt//DDbyL6YMR1jEx4zRgAbsKid9vbk4QIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/Sweeblog/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/Sweeblog/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

