package test;




import java.util.List;




import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.clay.entity.Admin;
import com.clay.entity.Blog;
import com.clay.entity.Identity;
import com.clay.entity.Image;
import com.clay.entity.Record;
import com.clay.entity.Type;
import com.clay.entity.User;
import com.clay.pojo.BlogVo;
import com.clay.pojo.PagePojo;
import com.clay.pojo.UserVo;
import com.clay.service.BlogService;
import com.clay.service.impl.AdminServiceImpl;
import com.clay.service.impl.BlogServiceImpl;
import com.clay.service.impl.IdentityServiceImpl;
import com.clay.service.impl.ImageServiceImpl;
import com.clay.service.impl.RecordServiceImpl;
import com.clay.service.impl.TypeServiceImpl;
import com.clay.service.impl.UserServiceImpl;


public class test {
	@Test
	public  void test1(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
		BlogService bs = (BlogService) ctx.getBean("blogService");
		BlogVo bv = new BlogVo();
		bv.setStatus(0);
		bv.setUser_id(1);
		PagePojo<Blog> list= bs.queryByPage(bv, 1, 2);
		for (Blog blog : list.getData()) {
			System.out.println(blog.getBlog_title());
		}
	}
}
