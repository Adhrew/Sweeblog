package com.clay.controller;

import java.util.List;

import javax.annotation.Resource;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clay.entity.Identity;
import com.clay.pojo.IdentityVo;
import com.clay.pojo.PagePojo;
import com.clay.service.IdentityService;
import com.clay.service.UserService;
import com.clay.tools.FaceTools;

@Controller
public class CardController {

	@Resource(name = "identityService")
	private IdentityService id_service;
	@Resource(name = "userService")
	private UserService user_service;

	@RequestMapping(value = "/getIdentity.action")
	@ResponseBody
	public List<Identity> getAllIdentity() {
		/** 得到所有状态为预认证的用户*/
		IdentityVo iv = new IdentityVo();
		iv.setStatus(1);
		PagePojo<Identity> pp = id_service.queryByPage(iv, 1, 10000);
		if (pp.getData().size() > 0) {
			return pp.getData();
		} else {
			return null;
		}
	}

	/**
	 * 如果身份证校验成功，将
	 * 
	 * @return
	 */
	@RequestMapping(value = "/checkUserCardID.action", produces = "text/html; charset=utf-8")
	@ResponseBody
	public String checkUser(int userid) {
		// ***********************查询用户认证的图片地址以及真实姓名和身份证号*********************
		Identity id = id_service.queryByUserId(userid);
		String db_card = id.getIdentity_idcard();
		String path = id.getIdentity_img();
		String db_name = id.getIdentity_name();
		// *************************获取身份证信息***************************************
		System.out.println(path);
		JSONObject json = null;
		try {
			json = FaceTools.getUserInfo("D:\\apache-tomcat-9.0.21\\webapps\\Sweeblog\\statics\\images\\"+path, "jpg");// 图片路径以及图片类型
		} catch (Exception e) {
			// TODO Auto-generated catch block
			// e.printStackTrace();
			System.out.println("路径不存在");
			return "身份证照片缺失！";
		}
		JSONObject data = json.getJSONObject("words_result");
		JSONObject json_name = data.getJSONObject("姓名");
		JSONObject json_card = data.getJSONObject("公民身份号码");
		System.out.println(json_name.getString("words"));
		System.out.println(json_card.getString("words"));
		// *****************插入一条认证信息********************
		// Identity identity = new Identity();
		// identity.setIdentity_idcard(json_card.getString("words").toString());
		// identity.setIdentity_name(data.getJSONObject("姓名").toString());
		// identity.setUser_id(user_id);
		// id_service.updateIdentity(identity);
		// *****************判断姓名以及身份证是否正确则将认证状态改成4********************
		System.out.println("***************************************************");
		System.out.println(db_name);
		System.out.println(db_card);
		if (json_name.getString("words").toString().equals(db_name) && json_card.getString("words").toString().equals(db_card)) {
			// *************************修改用户的认证状态******************************
			boolean flag = false;
			try {
				flag = user_service.identifyUser(userid);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "认证失败！";
			}
			return "实名认证成功！";
		} else {
			return "身份证照片与填写信息不一致，匹配失败！";
		}
	}

}
