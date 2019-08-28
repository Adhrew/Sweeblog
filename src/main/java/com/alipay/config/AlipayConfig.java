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
		public static String app_id = "2016100200644999";
		
		// 商户私钥，您的PKCS8格式RSA2私钥
	    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCA/jJT/xRzKj1qzsRuNG8Uhtk445nMj+ULxiapbfP3RhuoG3UcEUL7mJaN15DxvjC0abo9E/bSOhzjY/9+RFwJ2HrMNWcFucZeX7laVxPdyq5syxjA+d97mte9ZZ4697T4Dgd6LDQbMmIxsI7Ey1Cj+73SvnJFFcS7LWUxt00S3scIL+tU++OAsBd+CkkmrTIObqiY53kvH+gPY05z8dHzeSKtjQsubChF1tkq+Ty3E6cdTvyXGSelP/OIqxyoVO4oSjb8CauZRn7K6qszw44IBqDjWSLW12YzKcfv2Jje5h6iTaMSRMR54y/t3g5WtNUvJvh2NVcpSK+LGsIKvmP1AgMBAAECggEACdhc6wBLBUcyDNbfMzIZUE3Cgo8MjApnhvCGvuO/fR4Cul/uHkhK/nz08LqFO44ylXKEXmkJq5332nslYvPAupelN7TTuiIlu8o+kWCYCZOQoIkXyJLJtdtpn/EDlKiXTV90vqRlDbZYvEYnf2mtK/bo1A7pFdDFhSu/z32YClqOTJW3zCK6i4GVE7uurfYcpMi9Aa9oOROkh6w9n4e3B7PV5bWRqXo0+eqWFX4BI3DmXY3cbj5sJ/8r+GpaBa/ZekMCai5aK2wzdF6K620xfIu40WEFF1pPsMXOHSUCoXhRFDXQBABp/Jc1wxPtjLVqy+Gtch7L0V1CvOsb4AB4OQKBgQDaaxH5R8ZQYDzQxpjMCJezBOeEHSWyR+RadtXXiTxqwmR4aK+1QNisUi6yUoVxYh10HL6Gr9Dsn2rml8GhWa3QsCXn6Pbl0VvOuuXNyRJDI+r7+J0sdsQ9UWoZqERIxQ3qHGY//mrz11Wjpew5vLKbl/JiIoZLgDVNtjmvZy2XqwKBgQCXMBqMUG6n/vjtZGQpM4nzKzxUKTv/ld0yvHDxP2S3KflA3MrxddKd04nae00R/O5T1hLd5RbFSdVBx4rhJwvhEl87qu9WoWkonMNKBXQjMGfvLFrMsjKH0MhwM4/SEodQPEMW1F3Bo54csebyw9L13WZECmHet3QA/aA9KdfS3wKBgELQnh7zpebQicoT9onz1vQce/YeNHnlJCXIVIIqqSC/dpye6aE4xQ9x1HcYZ1nX+cqbQG1TO0YnPjxsD/+bv2AngnD/AwgqkzsaUVIyQDPpuOh7lRkU+9MGJL7Uio74ONl09pJ88ZrGNJxrFWhUIQ8X3D3I8ewGvEeZhuvxVDEhAoGAKGAiVuKMCrVfCRbMYOxwpM4hGGDCsyj0n74Pc334iand9OKCGCXdD2UU5ZIULP+dLip3c2bgw+NJ3n1Jq4Nf+sWLRUYLENmeWcgzpyr5rwQYXZk8znmwYPDy9nPurq1gEZ9mU0x3lWT6rrMb+C0vw5VS4Ezdgjr/8dvJ1Uu9ZYUCgYBm3nGSThqDucsNd3Tz5dQZ8LxgOruxRiF5djvE9ENHvruhgurG8q/1uslwmyTH9B6etsHCX2sOlK3rp0xSsh0ZaaBfOZMNM+R1FzledwGpNf95yyMKASYrlUZtpZVc+UXKCID+P5nS8RCvAtu3OaAYCeL9EeCOWJD4S9KHMLDAkg==";
		
		// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
	    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgZcZlicGVaooSoBNfBMNaBvAzapxb881a6qAglTR8cmLG7v3QiyeqeNHuguMkX6B5MBs2ZUplGGlMN9xicGoXddHPJbhKJzQj5CZ8wC57W+IgtPZWi8k/0AdVaqVxT/RoqDRDtV5Dp/2nDrJdiAuC1VuEPwTHTyLPkYXrrZIZnjqWheQ8e1yAYgRm83IOToaCGonSETgIDviizrGRnZ78sz2pvnP0p9A85SOCkjv974Z4oTYm5rB9R8mLfYa0pbIqIIHX55iDQ/4qAQToDpmNWjX3vtYETcPRCZ8JKtaTXZA0wAQk2sBdpTYNcBicwc+dxfIEiQH8jF1rJy+96trUQIDAQAB";


	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/Sweeblog/payindex.html";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/Sweeblog/index.html";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "https://openapi.alipaydev.com/gateway.do";


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
