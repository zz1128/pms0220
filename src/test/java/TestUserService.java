import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zs.pms.po.TDep;
import com.zs.pms.po.TPermission;
import com.zs.pms.po.TUser;
import com.zs.pms.service.UserService;
import com.zs.pms.vo.QueryUser;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationcontext.xml")
public class TestUserService {
	@Autowired
	UserService us;
	
	
	public void testHello() {
		us.hello();
	}
	
	
	public void testLogin() {
		List<TPermission> list1=us.queryByUid(3084);
		for(TPermission per:list1) {
			System.out.println(per.getPname());
		}
		System.out.println("-----------整理后的------------");
		
		for(TPermission per1:us.getMenu(list1)) {
			//一级权限
			System.out.println(per1.getPname());
			for(TPermission per2:per1.getChildren()) {
				System.out.println("----"+per2.getPname());
			}
		}
		
	}
	
	
	public void testQuery() {
		//创建查询对象
		QueryUser query=new QueryUser();
		query.setLoginname("");
		query.setPassword("tmr123");
		query.setSex("女");
		System.out.println(us.queryByCon(query).size());
	}
	
	
	public void testDelete() {
		int [] ids = {5,6,7,8};
		us.deleteByIds(ids);
	}
	
	
	public void testupdate() {
		TUser tUser = new TUser();
		TDep tDep = new TDep();
		tUser.setBirthday(new Date());
		tUser.setDept(tDep);
		tDep.setId(6);
		tUser.setEmail("1111up@qq.com");
		tUser.setId(1130);
		tUser.setIsenabled(-1);
		tUser.setLoginname("test");
		tUser.setPassword("1234");
		tUser.setRealname("ss");
		tUser.setSex("男");
		tUser.setUpdator(1);
		us.updateUser(tUser);
	}
	
	
	
	@Test
	public void testInsert() {
		TUser tUser = new TUser();
		TDep tDep = new TDep();
		tUser.setBirthday(new Date());
		tUser.setDept(tDep);
		tDep.setId(6);
		tUser.setEmail("1128up@qq.com");
		tUser.setIsenabled(-1);
		tUser.setLoginname("insert123-trans");
		tUser.setPassword("1234");
		tUser.setRealname("zzzzzzz");
		tUser.setSex("男");
		tUser.setCreator(1);
		tUser.setPic("insert");
		us.insertUser(tUser);
	}
	
	
	public void testQuery1() {
		//创建查询对象
		QueryUser query=new QueryUser();
		query.setSex("男");
		for(TUser user:us.queryByPage(2, query))
		{
			System.out.println(user.getId()+"丶"+user.getLoginname());
		}
		System.out.println("共"+us.queryPageCont(query)+"页");
	}
	
	
	

}
