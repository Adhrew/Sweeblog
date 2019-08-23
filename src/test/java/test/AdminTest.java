package test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.clay.entity.Record;
import com.clay.entity.User;
import com.clay.pojo.PagePojo;
import com.clay.pojo.RecordVo;
import com.clay.pojo.UserVo;
import com.clay.service.RecordService;
import com.clay.service.UserService;

public class AdminTest {
	
	
	
	@Test
	public void getdata() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
//		BlogService service = (BlogService)ctx.getBean("blogService");
//		UserService service = (UserService)ctx.getBean("userService");
//		UserVo userVo = new UserVo();
//		userVo.setUser_identity(0);
//		PagePojo<User> list = service.queryByPage(null, 2, 5);
//		for (User user : list.getData()) {
//			System.out.println(user.getUser_id());
//		}
		RecordService service = (RecordService) ctx.getBean("recordService");
		RecordVo rv = new RecordVo();
//		rv.setBlog_id(blog_id);
//		rv.setBlog_user_id(2);
//		rv.setBlog_id(1);
		rv.setUser_id(1);
		rv.setOk(0);
//		rv.setStatus(status);
//		rv.setUser_id(1);
		PagePojo<Record> pp = service.queryByPage(rv, 1, 2);
		List<Record> list = pp.getData();
		for (Record record : list) {
			System.out.println(record.getRecord_starttime());
		}
	}
}
