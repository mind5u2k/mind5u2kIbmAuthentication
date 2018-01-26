package net.ghosh.IbmBackend.daoImpl;

import java.util.List;

import net.ghosh.IbmBackend.dao.UserDao;
import net.ghosh.IbmBackend.dto.CompUser;

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
	public List<CompUser> userLists() {
		String stringquery = "FROM CompUser";
		Query query = sessionFactory.getCurrentSession().createQuery(
				stringquery);
		return query.getResultList();
	}

	@Override
	@Transactional
	public boolean addUser(CompUser compUser) {
		try {
			sessionFactory.getCurrentSession().persist(compUser);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public List<CompUser> getUserByEmailId(String mailId) {
		String stringquery = "FROM CompUser WHERE email=:email";
		Query query = sessionFactory.getCurrentSession().createQuery(
				stringquery);
		query.setParameter("email", mailId);
		return query.getResultList();
	}

	@Override
	public boolean updateUser(CompUser compUser) {
		try {
			sessionFactory.getCurrentSession().update(compUser);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean deleteUser(CompUser compUser) {
		try {
			sessionFactory.getCurrentSession().update(compUser);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public CompUser getUserById(long id) {
		return sessionFactory.getCurrentSession().get(CompUser.class,
				Long.valueOf(id));
	}
}
