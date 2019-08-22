package test;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.clay.entity.User;
import com.clay.service.UserService;
import com.clay.service.impl.RecordServiceImpl;

public class YIbOTest {
	@Test
	public  void test1(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
		UserService bs = (UserService)ctx.getBean("userService");
		try {
			List<User>  list= bs.queryAll();
			for (User user : list) {
				DateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				System.out.println(user.getUser_register());
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
