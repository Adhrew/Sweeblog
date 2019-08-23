package com.clay.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * Ò³ÃæÌø×ª¿ØÖÆÆ÷
 * @author ´Ìâ¬
 *
 */
@Controller
public class PageController {
	
	@RequestMapping(value="/sys/index.html")
	public String loadIndex() {
		return "admin/index";
	}

	@RequestMapping(value = "/sys/welcome.html")
	public String loadWelcome() {
		return "admin/welcome";
	}

	@RequestMapping(value = "/sys/login.html")
	public String loadLogin() {
		return "admin/login";
	}

	@RequestMapping(value = "/sys/welcome1.html")
	public String loadWelcome1() {
		return "admin/welcome1";
	}

	@RequestMapping(value = "/sys/member-list.html")
	public String loadMemberList() {
		return "admin/member-list";
	}

	@RequestMapping(value = "/sys/member-list1.html")
	public String loadMemberlist1() {
		return "admin/member-list1";
	}

	@RequestMapping(value = "/sys/member-del.html")
	public String loadMemberDel() {
		return "admin/member-del";
	}

	@RequestMapping(value = "/sys/order-list.html")
	public String loadOrderList() {
		return "admin/order-list";
	}

	@RequestMapping(value = "/sys/order-list1.html")
	public String loadOrderList1() {
		return "admin/order-list1";
	}

	@RequestMapping(value = "/sys/cate.html")
	public String loadCate() {
		return "admin/cate";
	}

	@RequestMapping(value = "/sys/city.html")
	public String loadCity() {
		return "admin/city";
	}

	@RequestMapping(value = "/sys/admin-list.html")
	public String loadAdminList() {
		return "admin/admin-list";
	}

	@RequestMapping(value = "/sys/admin-role.html")
	public String loadAdminRole() {
		return "admin/admin-role";
	}
	
	@RequestMapping(value = "/sys/admin-cate.html")
	public String loadAdminCate() {
		return "admin/admin-cate";
	}
	
	@RequestMapping(value = "/sys/admin-rule.html")
	public String loadAdminRule() {
		return "admin/admin-rule";
	}
}
