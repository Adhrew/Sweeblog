package test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.clay.entity.User;
import com.clay.service.UserService;

public class AdminTest {
	
	
	
	@Test
	public void getdata() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
//		BlogService service = (BlogService)ctx.getBean("blogService");
		UserService service = (UserService)ctx.getBean("userService");
		List<User> list = service.queryAll();
		System.out.println(list.size());
	}
}
