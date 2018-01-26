package net.ghosh.IbmBackend;

import static org.junit.Assert.assertEquals;
import net.ghosh.IbmBackend.dao.UserDao;
import net.ghosh.IbmBackend.dto.CompUser;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class UserTestCases {

	private static AnnotationConfigApplicationContext context;

	private static UserDao userDao;

	private CompUser compUser;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.ghosh.IbmBackend");
		context.refresh();

		userDao = (UserDao) context.getBean("userDao");
	}

	/*-@Test
	public void testAddUser() {
		CompUser compUser = new CompUser();
		compUser.setEmail("anuraggh@in.ibm.com");
		compUser.setName("Anurag Ghosh");
		compUser.setRole("Admin");

		assertEquals("Successfully added the user", true,
				userDao.addUser(compUser));
	}*/

	@Test
	public void testGetAllUsers() {
		assertEquals("successfully fetched the user form compuserTable ", 1,
				userDao.getUserByEmailId("anuraggh@in.ibm.com").size());
	}
}
