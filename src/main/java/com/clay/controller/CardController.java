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
		/** �õ�����״̬ΪԤ��֤���û�*/
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
	 * ������֤У��ɹ�����
	 * 
	 * @return
	 */
	@RequestMapping(value = "/checkUserCardID.action", produces = "text/html; charset=utf-8")
	@ResponseBody
	public String checkUser(int userid) {
		// ***********************��ѯ�û���֤��ͼƬ��ַ�Լ���ʵ���������֤��*********************
		Identity id = id_service.queryByUserId(userid);
		String db_card = id.getIdentity_idcard();
		String path = id.getIdentity_img();
		String db_name = id.getIdentity_name();
		// *************************��ȡ���֤��Ϣ***************************************
		System.out.println(path);
		JSONObject json = null;
		try {
			json = FaceTools.getUserInfo("D:\\apache-tomcat-9.0.21\\webapps\\Sweeblog\\statics\\images\\"+path, "jpg");// ͼƬ·���Լ�ͼƬ����
		} catch (Exception e) {
			// TODO Auto-generated catch block
			// e.printStackTrace();
			System.out.println("·��������");
			return "���֤��Ƭȱʧ��";
		}
		JSONObject data = json.getJSONObject("words_result");
		JSONObject json_name = data.getJSONObject("����");
		JSONObject json_card = data.getJSONObject("������ݺ���");
		System.out.println(json_name.getString("words"));
		System.out.println(json_card.getString("words"));
		// *****************����һ����֤��Ϣ********************
		// Identity identity = new Identity();
		// identity.setIdentity_idcard(json_card.getString("words").toString());
		// identity.setIdentity_name(data.getJSONObject("����").toString());
		// identity.setUser_id(user_id);
		// id_service.updateIdentity(identity);
		// *****************�ж������Լ����֤�Ƿ���ȷ����֤״̬�ĳ�4********************
		System.out.println("***************************************************");
		System.out.println(db_name);
		System.out.println(db_card);
		if (json_name.getString("words").toString().equals(db_name) && json_card.getString("words").toString().equals(db_card)) {
			// *************************�޸��û�����֤״̬******************************
			boolean flag = false;
			try {
				flag = user_service.identifyUser(userid);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "��֤ʧ�ܣ�";
			}
			return "ʵ����֤�ɹ���";
		} else {
			return "���֤��Ƭ����д��Ϣ��һ�£�ƥ��ʧ�ܣ�";
		}
	}

}
