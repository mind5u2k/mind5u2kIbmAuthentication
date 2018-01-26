package net.ghosh.IbmBackend.dao;

import java.util.List;

import net.ghosh.IbmBackend.dto.CompUser;

public interface UserDao {

	List<CompUser> userLists();

	boolean addUser(CompUser compUser);

	boolean updateUser(CompUser compUser);

	boolean deleteUser(CompUser compUser);

	public CompUser getUserById(long id);

	List<CompUser> getUserByEmailId(String mailId);
}
