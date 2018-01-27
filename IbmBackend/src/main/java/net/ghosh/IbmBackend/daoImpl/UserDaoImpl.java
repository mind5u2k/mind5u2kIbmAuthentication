package net.ghosh.IbmBackend.daoImpl;

import java.util.List;

import net.ghosh.IbmBackend.dao.UserDao;
import net.ghosh.IbmBackend.dto.CompUser;
import net.ghosh.IbmBackend.dto.Sh_User;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("userDao")
@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Sh_User> userLists() {
		String stringquery = "FROM Sh_User";
		Query query = sessionFactory.getCurrentSession().createQuery(
				stringquery);
		return query.getResultList();
	}

	@Override
	@Transactional
	public boolean addUser(Sh_User compUser) {
		try {
			sessionFactory.getCurrentSession().persist(compUser);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Sh_User> getUserByEmailId(String mailId) {
		String stringquery = "FROM Sh_User WHERE mailId=:mailId";
		Query query = sessionFactory.getCurrentSession().createQuery(
				stringquery);
		query.setParameter("mailId", mailId);
		List<Sh_User> sh_Users = query.getResultList();
		System.out.println("users are [" + sh_Users + "]");
		if (sh_Users.size() > 0) {
			return sh_Users;
		} else {
			return null;
		}
	}

	@Override
	public boolean updateUser(Sh_User compUser) {
		try {
			sessionFactory.getCurrentSession().update(compUser);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean deleteUser(Sh_User compUser) {
		try {
			sessionFactory.getCurrentSession().update(compUser);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public Sh_User getUserById(long id) {
		return sessionFactory.getCurrentSession().get(Sh_User.class,
				Long.valueOf(id));
	}
}
