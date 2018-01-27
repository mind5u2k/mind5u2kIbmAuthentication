package net.ghosh.IbmBackend.dao;

import java.util.List;

import net.ghosh.IbmBackend.dto.Sh_User;

public interface UserDao {

	List<Sh_User> userLists();

	boolean addUser(Sh_User compUser);

	boolean updateUser(Sh_User compUser);

	boolean deleteUser(Sh_User compUser);

	public Sh_User getUserById(long id);

	List<Sh_User> getUserByEmailId(String mailId);
}
