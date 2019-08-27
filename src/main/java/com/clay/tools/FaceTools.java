package com.clay.tools;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import javax.imageio.ImageIO;

import org.json.JSONObject;

import com.baidu.aip.ocr.AipOcr;

public class FaceTools {
	// 设置APPID/AK/SK
	public static final String APP_ID = "17087890";// 你的 App ID
	public static final String API_KEY = "qq3XGhBRZqmneX15akH1H6It";// 你的 Api Key
	public static final String SECRET_KEY = "h1ibyFFDPE1w1lYCvOruOuoCeXVqAxit";// 你的Secret

	public static JSONObject getUserInfo(String path, String imgType) throws Exception {
		// 初始化一个AipOcr
		AipOcr client = new AipOcr(APP_ID, API_KEY, SECRET_KEY);
		// 可选：设置网络连接参数
		client.setConnectionTimeoutInMillis(2000);// 建立连接的超时时间（单位：毫秒）
		client.setSocketTimeoutInMillis(60000);// 通过打开的连接传输数据的超时时间（单位：毫秒）
		// 可选：设置代理服务器地址, http和socket二选一，或者均不设置
		// client.setHttpProxy("proxy_host", proxy_port); // 设置http代理
		// client.setSocketProxy("proxy_host", proxy_port); // 设置socket代理
		// 可选：设置log4j日志输出格式，若不设置，则使用默认配置
		// 也可以直接通过jvm启动参数设置此环境变量
		// System.setProperty("aip.log4j.conf",
		// "path/to/your/log4j.properties");
		// 传入可选参数调用接口
		HashMap<String, String> options = new HashMap<String, String>();
		options.put("detect_direction", "true");// 是否检测图像朝向，默认不检测，即：false。
		options.put("detect_risk", "false");// 是否开启身份证风险类型(身份证复印件、临时身份证、身份证翻拍、修改过的身份证)功能，默认不开启，即：false。
		// front - 身份证含照片的一面(back - 身份证带国徽的一面)
		String idCardSide = "front";
		// 参数为本地图片二进制数组
		byte[] file = getImageBinary(path, imgType);
		JSONObject res = client.idcard(file, idCardSide, options);
//		System.out.println(res.toString(2));
		return res;
	}

	/**
	 * 图片转二进制数组
	 * 
	 * @param imgType
	 * @param url
	 * @return
	 */
	private static byte[] getImageBinary(String path, String imgType) {
		File f = new File(path);
		BufferedImage bi;
		try {
			bi = ImageIO.read(f);
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			ImageIO.write(bi, imgType, baos); // 经测试转换的图片是格式这里就什么格式，否则会失真
			byte[] bytes = baos.toByteArray();

			return bytes;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;

	}
}
